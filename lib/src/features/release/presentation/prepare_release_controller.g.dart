// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_release_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAppVersionHash() => r'a1b66418f04d18e87185a1515cf16a39d78ae68d';

/// See also [fetchAppVersion].
@ProviderFor(fetchAppVersion)
final fetchAppVersionProvider =
    AutoDisposeFutureProvider<SetAppVersion>.internal(
  fetchAppVersion,
  name: r'fetchAppVersionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchAppVersionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAppVersionRef = AutoDisposeFutureProviderRef<SetAppVersion>;
String _$prepareReleaseControllerHash() =>
    r'49e4c75ec44668d5d267a2f90075f28a6cb832b8';

/// See also [PrepareReleaseController].
@ProviderFor(PrepareReleaseController)
final prepareReleaseControllerProvider =
    AutoDisposeAsyncNotifierProvider<PrepareReleaseController, void>.internal(
  PrepareReleaseController.new,
  name: r'prepareReleaseControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$prepareReleaseControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PrepareReleaseController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
