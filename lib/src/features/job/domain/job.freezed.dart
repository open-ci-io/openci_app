// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  String get baseBranch => throw _privateConstructorUsedError;
  String get buildBranch => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  bool get failure => throw _privateConstructorUsedError;
  String get githubPAT => throw _privateConstructorUsedError;
  String get githubRepositoryUrl => throw _privateConstructorUsedError;
  TargetPlatform get platform => throw _privateConstructorUsedError;
  bool get processing => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {String baseBranch,
      String buildBranch,
      DateTime createdAt,
      String documentId,
      bool failure,
      String githubPAT,
      String githubRepositoryUrl,
      TargetPlatform platform,
      bool processing,
      bool success,
      String userId});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseBranch = null,
    Object? buildBranch = null,
    Object? createdAt = null,
    Object? documentId = null,
    Object? failure = null,
    Object? githubPAT = null,
    Object? githubRepositoryUrl = null,
    Object? platform = null,
    Object? processing = null,
    Object? success = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      baseBranch: null == baseBranch
          ? _value.baseBranch
          : baseBranch // ignore: cast_nullable_to_non_nullable
              as String,
      buildBranch: null == buildBranch
          ? _value.buildBranch
          : buildBranch // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      githubPAT: null == githubPAT
          ? _value.githubPAT
          : githubPAT // ignore: cast_nullable_to_non_nullable
              as String,
      githubRepositoryUrl: null == githubRepositoryUrl
          ? _value.githubRepositoryUrl
          : githubRepositoryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TargetPlatform,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String baseBranch,
      String buildBranch,
      DateTime createdAt,
      String documentId,
      bool failure,
      String githubPAT,
      String githubRepositoryUrl,
      TargetPlatform platform,
      bool processing,
      bool success,
      String userId});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseBranch = null,
    Object? buildBranch = null,
    Object? createdAt = null,
    Object? documentId = null,
    Object? failure = null,
    Object? githubPAT = null,
    Object? githubRepositoryUrl = null,
    Object? platform = null,
    Object? processing = null,
    Object? success = null,
    Object? userId = null,
  }) {
    return _then(_$JobImpl(
      baseBranch: null == baseBranch
          ? _value.baseBranch
          : baseBranch // ignore: cast_nullable_to_non_nullable
              as String,
      buildBranch: null == buildBranch
          ? _value.buildBranch
          : buildBranch // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      githubPAT: null == githubPAT
          ? _value.githubPAT
          : githubPAT // ignore: cast_nullable_to_non_nullable
              as String,
      githubRepositoryUrl: null == githubRepositoryUrl
          ? _value.githubRepositoryUrl
          : githubRepositoryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as TargetPlatform,
      processing: null == processing
          ? _value.processing
          : processing // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl implements _Job {
  const _$JobImpl(
      {required this.baseBranch,
      required this.buildBranch,
      required this.createdAt,
      required this.documentId,
      this.failure = false,
      required this.githubPAT,
      required this.githubRepositoryUrl,
      required this.platform,
      this.processing = false,
      this.success = false,
      required this.userId});

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  final String baseBranch;
  @override
  final String buildBranch;
  @override
  final DateTime createdAt;
  @override
  final String documentId;
  @override
  @JsonKey()
  final bool failure;
  @override
  final String githubPAT;
  @override
  final String githubRepositoryUrl;
  @override
  final TargetPlatform platform;
  @override
  @JsonKey()
  final bool processing;
  @override
  @JsonKey()
  final bool success;
  @override
  final String userId;

  @override
  String toString() {
    return 'Job(baseBranch: $baseBranch, buildBranch: $buildBranch, createdAt: $createdAt, documentId: $documentId, failure: $failure, githubPAT: $githubPAT, githubRepositoryUrl: $githubRepositoryUrl, platform: $platform, processing: $processing, success: $success, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.baseBranch, baseBranch) ||
                other.baseBranch == baseBranch) &&
            (identical(other.buildBranch, buildBranch) ||
                other.buildBranch == buildBranch) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.githubPAT, githubPAT) ||
                other.githubPAT == githubPAT) &&
            (identical(other.githubRepositoryUrl, githubRepositoryUrl) ||
                other.githubRepositoryUrl == githubRepositoryUrl) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.processing, processing) ||
                other.processing == processing) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseBranch,
      buildBranch,
      createdAt,
      documentId,
      failure,
      githubPAT,
      githubRepositoryUrl,
      platform,
      processing,
      success,
      userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {required final String baseBranch,
      required final String buildBranch,
      required final DateTime createdAt,
      required final String documentId,
      final bool failure,
      required final String githubPAT,
      required final String githubRepositoryUrl,
      required final TargetPlatform platform,
      final bool processing,
      final bool success,
      required final String userId}) = _$JobImpl;

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  String get baseBranch;
  @override
  String get buildBranch;
  @override
  DateTime get createdAt;
  @override
  String get documentId;
  @override
  bool get failure;
  @override
  String get githubPAT;
  @override
  String get githubRepositoryUrl;
  @override
  TargetPlatform get platform;
  @override
  bool get processing;
  @override
  bool get success;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
