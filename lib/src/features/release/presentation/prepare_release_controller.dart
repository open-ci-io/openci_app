import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:openci_app/src/features/release/domain/set_app_version.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'prepare_release_controller.g.dart';

Future<String> fetchPubspecYaml(
  String owner,
  String repo,
  String accessToken,
) async {
  final uri = Uri.https(
    'api.github.com',
    '/repos/$owner/$repo/contents/pubspec.yaml',
  );
  final response =
      await http.get(uri, headers: {'Authorization': 'token $accessToken'});

  if (response.statusCode == 200) {
    final body = jsonDecode(response.body);
    final content = body['content'].replaceAll('\n', '');
    final decodedContent = utf8.decode(base64.decode(content));
    return decodedContent;
  } else {
    throw Exception('Failed to fetch pubspec.yaml: ${response.body}');
  }
}

String? extractVersion(String yamlContent) {
  // バージョン行を見つける正規表現
  final versionLineRegExp = RegExp(r'version: ([^\s]+)');
  // +記号で区切られたバージョン番号の前の部分を抽出する正規表現
  final versionRegExp = RegExp(r'([^\+]+)');

  // pubspec.yamlの内容からバージョン行を探す
  final versionLineMatch = versionLineRegExp.firstMatch(yamlContent);
  if (versionLineMatch != null) {
    // バージョン行からバージョン番号を取り出す
    final version = versionLineMatch.group(1);
    if (version != null) {
      // バージョン番号から+の前の部分を抽出する
      final versionMatch = versionRegExp.firstMatch(version);
      if (versionMatch != null) {
        final extractedVersion = versionMatch.group(1);
        return extractedVersion;
      } else {
        throw Exception('Version format does not include a + symbol.');
      }
    }
  } else {
    throw Exception('Version line not found.');
  }
  return null;
}

@riverpod
Future<SetAppVersion> fetchAppVersion(
  FetchAppVersionRef ref,
) async {
  final uid = FirebaseAuth.instance.currentUser!.uid;
  print('uid: $uid');
  final querySnapshot = await FirebaseFirestore.instance
      .collection('users')
      .where('users', arrayContains: uid)
      .withConverter(
        fromFirestore: (snapshot, _) =>
            SetAppVersion.fromJson(snapshot.data()!),
        toFirestore: (data, _) => data.toJson(),
      )
      .get();
  final data = querySnapshot.docs.first.data();

  final pubspecYaml =
      await fetchPubspecYaml(data.orgName, data.repoName, data.githubPAT);
  final version = extractVersion(pubspecYaml);
  if (version == null) {
    throw Exception('Failed to extract version from pubspec.yaml');
  }
  return data.copyWith(appVersion: version);
}

@riverpod
class PrepareReleaseController extends _$PrepareReleaseController {
  @override
  Future<void> build() async {
    return;
  }

  Future<void> updatePubspecYamlVersionKeepBuild(
    String owner,
    String repo,
    String accessToken,
    String newVersion,
  ) async {
    const String filePath = 'pubspec.yaml';
    final Uri url =
        Uri.https('api.github.com', '/repos/$owner/$repo/contents/$filePath');

    final currentFileResponse = await http.get(
      url,
      headers: {
        'Authorization': 'token $accessToken',
      },
    );

    if (currentFileResponse.statusCode == 200) {
      final currentFileContent = jsonDecode(currentFileResponse.body);
      final content = utf8.decode(
        base64.decode(currentFileContent['content'].replaceAll('\n', '')),
      );
      final sha = currentFileContent['sha'];

      final updatedContent = content.replaceAllMapped(
        RegExp(r'version: (\d+\.\d+\.\d+)(\+?\d*)'),
        (match) => 'version: $newVersion${match.group(2)}',
      );
      final encodedUpdatedContent = base64.encode(utf8.encode(updatedContent));

      final updateResponse = await http.put(
        url,
        headers: {
          'Authorization': 'token $accessToken',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'message': 'Update pubspec.yaml version to $newVersion',
          'content': encodedUpdatedContent,
          'sha': sha,
          'branch': 'develop',
        }),
      );

      if (updateResponse.statusCode == 200) {
        print('pubspec.yaml has been successfully updated.');
      } else {
        print('Failed to update pubspec.yaml: ${updateResponse.body}');
      }
    } else {
      print(
        'Failed to fetch current pubspec.yaml: ${currentFileResponse.body}',
      );
    }
  }

  String updateVersion(String version) {
    List<int> parts = version.split('.').map(int.parse).toList();

    if (parts.length == 3) {
      parts[0] += 1;
      parts[1] = 0;
      parts[2] = 0;
    }

    return parts.join('.');
  }

  String updateMinorVersion(String version) {
    List<int> parts = version.split('.').map(int.parse).toList();

    if (parts.length == 3) {
      parts[1] += 1;
      parts[2] = 0;
    }

    return parts.join('.');
  }

  String updateHotfixVersion(String version) {
    List<int> parts = version.split('.').map(int.parse).toList();

    if (parts.length == 3) {
      parts[2] += 1;
    }

    return parts.join('.');
  }
}
