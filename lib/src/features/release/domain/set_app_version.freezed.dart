// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetAppVersion _$SetAppVersionFromJson(Map<String, dynamic> json) {
  return _SetAppVersion.fromJson(json);
}

/// @nodoc
mixin _$SetAppVersion {
  String get githubPAT => throw _privateConstructorUsedError;
  String get orgName => throw _privateConstructorUsedError;
  String get repoName => throw _privateConstructorUsedError;
  String get appVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAppVersionCopyWith<SetAppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAppVersionCopyWith<$Res> {
  factory $SetAppVersionCopyWith(
          SetAppVersion value, $Res Function(SetAppVersion) then) =
      _$SetAppVersionCopyWithImpl<$Res, SetAppVersion>;
  @useResult
  $Res call(
      {String githubPAT, String orgName, String repoName, String appVersion});
}

/// @nodoc
class _$SetAppVersionCopyWithImpl<$Res, $Val extends SetAppVersion>
    implements $SetAppVersionCopyWith<$Res> {
  _$SetAppVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? githubPAT = null,
    Object? orgName = null,
    Object? repoName = null,
    Object? appVersion = null,
  }) {
    return _then(_value.copyWith(
      githubPAT: null == githubPAT
          ? _value.githubPAT
          : githubPAT // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: null == orgName
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetAppVersionImplCopyWith<$Res>
    implements $SetAppVersionCopyWith<$Res> {
  factory _$$SetAppVersionImplCopyWith(
          _$SetAppVersionImpl value, $Res Function(_$SetAppVersionImpl) then) =
      __$$SetAppVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String githubPAT, String orgName, String repoName, String appVersion});
}

/// @nodoc
class __$$SetAppVersionImplCopyWithImpl<$Res>
    extends _$SetAppVersionCopyWithImpl<$Res, _$SetAppVersionImpl>
    implements _$$SetAppVersionImplCopyWith<$Res> {
  __$$SetAppVersionImplCopyWithImpl(
      _$SetAppVersionImpl _value, $Res Function(_$SetAppVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? githubPAT = null,
    Object? orgName = null,
    Object? repoName = null,
    Object? appVersion = null,
  }) {
    return _then(_$SetAppVersionImpl(
      githubPAT: null == githubPAT
          ? _value.githubPAT
          : githubPAT // ignore: cast_nullable_to_non_nullable
              as String,
      orgName: null == orgName
          ? _value.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAppVersionImpl implements _SetAppVersion {
  const _$SetAppVersionImpl(
      {required this.githubPAT,
      required this.orgName,
      required this.repoName,
      this.appVersion = '0.0.1'});

  factory _$SetAppVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAppVersionImplFromJson(json);

  @override
  final String githubPAT;
  @override
  final String orgName;
  @override
  final String repoName;
  @override
  @JsonKey()
  final String appVersion;

  @override
  String toString() {
    return 'SetAppVersion(githubPAT: $githubPAT, orgName: $orgName, repoName: $repoName, appVersion: $appVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAppVersionImpl &&
            (identical(other.githubPAT, githubPAT) ||
                other.githubPAT == githubPAT) &&
            (identical(other.orgName, orgName) || other.orgName == orgName) &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, githubPAT, orgName, repoName, appVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAppVersionImplCopyWith<_$SetAppVersionImpl> get copyWith =>
      __$$SetAppVersionImplCopyWithImpl<_$SetAppVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAppVersionImplToJson(
      this,
    );
  }
}

abstract class _SetAppVersion implements SetAppVersion {
  const factory _SetAppVersion(
      {required final String githubPAT,
      required final String orgName,
      required final String repoName,
      final String appVersion}) = _$SetAppVersionImpl;

  factory _SetAppVersion.fromJson(Map<String, dynamic> json) =
      _$SetAppVersionImpl.fromJson;

  @override
  String get githubPAT;
  @override
  String get orgName;
  @override
  String get repoName;
  @override
  String get appVersion;
  @override
  @JsonKey(ignore: true)
  _$$SetAppVersionImplCopyWith<_$SetAppVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
