import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_app_version.freezed.dart';
part 'set_app_version.g.dart';

@freezed
class SetAppVersion with _$SetAppVersion {
  const factory SetAppVersion({
    required String githubPAT,
    required String orgName,
    required String repoName,
    @Default('0.0.1') String appVersion,
  }) = _SetAppVersion;
  factory SetAppVersion.fromJson(Map<String, Object?> json) =>
      _$SetAppVersionFromJson(json);
}
