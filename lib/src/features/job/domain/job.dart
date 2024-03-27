import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  const factory Job({
    required String baseBranch,
    required String buildBranch,
    required DateTime createdAt,
    required String documentId,
    @Default(false) bool failure,
    required String githubPAT,
    required String githubRepositoryUrl,
    required TargetPlatform platform,
    @Default(false) bool processing,
    @Default(false) bool success,
    required String userId,
  }) = _Job;
  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}

enum TargetPlatform {
  android,
  ios,
}
