// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_release_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAppVersionHash() => r'7447d56ac1e09dc94ca315340288a288158cf20b';

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
    r'60a414aef22dc8b1c058c4e6af3d835863dd158f';

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
