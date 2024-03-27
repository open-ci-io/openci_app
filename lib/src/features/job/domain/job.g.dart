// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      baseBranch: json['baseBranch'] as String,
      buildBranch: json['buildBranch'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      documentId: json['documentId'] as String,
      failure: json['failure'] as bool? ?? false,
      githubPAT: json['githubPAT'] as String,
      githubRepositoryUrl: json['githubRepositoryUrl'] as String,
      platform: $enumDecode(_$TargetPlatformEnumMap, json['platform']),
      processing: json['processing'] as bool? ?? false,
      success: json['success'] as bool? ?? false,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'baseBranch': instance.baseBranch,
      'buildBranch': instance.buildBranch,
      'createdAt': instance.createdAt.toIso8601String(),
      'documentId': instance.documentId,
      'failure': instance.failure,
      'githubPAT': instance.githubPAT,
      'githubRepositoryUrl': instance.githubRepositoryUrl,
      'platform': _$TargetPlatformEnumMap[instance.platform]!,
      'processing': instance.processing,
      'success': instance.success,
      'userId': instance.userId,
    };

const _$TargetPlatformEnumMap = {
  TargetPlatform.android: 'android',
  TargetPlatform.ios: 'ios',
};
