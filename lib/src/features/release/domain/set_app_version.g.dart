// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_app_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAppVersionImpl _$$SetAppVersionImplFromJson(Map<String, dynamic> json) =>
    _$SetAppVersionImpl(
      githubPAT: json['githubPAT'] as String,
      orgName: json['orgName'] as String,
      repoName: json['repoName'] as String,
      appVersion: json['appVersion'] as String? ?? '0.0.1',
    );

Map<String, dynamic> _$$SetAppVersionImplToJson(_$SetAppVersionImpl instance) =>
    <String, dynamic>{
      'githubPAT': instance.githubPAT,
      'orgName': instance.orgName,
      'repoName': instance.repoName,
      'appVersion': instance.appVersion,
    };
