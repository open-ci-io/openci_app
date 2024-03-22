import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

part 'prepare_release_controller.g.dart';

@riverpod
Future<String> fetchVersion(
  FetchVersionRef ref,
  String owner,
  String repo,
) async {
  final controller = ref.watch(prepareReleaseControllerProvider.notifier);
  final result = await controller.fetchPubspecYaml(owner, repo);
  if (result == null) {
    return '0.0.1';
  }
  return result;
}

@riverpod
class PrepareReleaseController extends _$PrepareReleaseController {
  @override
  void build() {
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

  Future<String?> fetchPubspecYaml(String owner, String repo) async {
    const accessToken = '';

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
      print(decodedContent);
      return extractVersion(decodedContent);
    } else {
      print('Failed to fetch pubspec.yaml: ${response.body}');
    }
    return null;
  }

  String? extractVersion(String yamlContent) {
    final versionLineRegExp = RegExp(r'version: ([^\s]+)');

    final versionRegExp = RegExp(r'([^\+]+)');

    final versionLineMatch = versionLineRegExp.firstMatch(yamlContent);
    if (versionLineMatch != null) {
      final version = versionLineMatch.group(1);
      if (version != null) {
        final versionMatch = versionRegExp.firstMatch(version);
        if (versionMatch != null) {
          final extractedVersion = versionMatch.group(1);
          return extractedVersion;
        } else {
          print('Version format does not include a + symbol.');
        }
      }
    } else {
      print('Version line not found.');
    }
    return null;
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
