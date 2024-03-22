// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_release_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchVersionHash() => r'b0352e203079b3f4c182e883bfe3e98af4837c40';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchVersion].
@ProviderFor(fetchVersion)
const fetchVersionProvider = FetchVersionFamily();

/// See also [fetchVersion].
class FetchVersionFamily extends Family<AsyncValue<String>> {
  /// See also [fetchVersion].
  const FetchVersionFamily();

  /// See also [fetchVersion].
  FetchVersionProvider call(
    String owner,
    String repo,
  ) {
    return FetchVersionProvider(
      owner,
      repo,
    );
  }

  @override
  FetchVersionProvider getProviderOverride(
    covariant FetchVersionProvider provider,
  ) {
    return call(
      provider.owner,
      provider.repo,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchVersionProvider';
}

/// See also [fetchVersion].
class FetchVersionProvider extends AutoDisposeFutureProvider<String> {
  /// See also [fetchVersion].
  FetchVersionProvider(
    String owner,
    String repo,
  ) : this._internal(
          (ref) => fetchVersion(
            ref as FetchVersionRef,
            owner,
            repo,
          ),
          from: fetchVersionProvider,
          name: r'fetchVersionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchVersionHash,
          dependencies: FetchVersionFamily._dependencies,
          allTransitiveDependencies:
              FetchVersionFamily._allTransitiveDependencies,
          owner: owner,
          repo: repo,
        );

  FetchVersionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repo,
  }) : super.internal();

  final String owner;
  final String repo;

  @override
  Override overrideWith(
    FutureOr<String> Function(FetchVersionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchVersionProvider._internal(
        (ref) => create(ref as FetchVersionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repo: repo,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _FetchVersionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchVersionProvider &&
        other.owner == owner &&
        other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchVersionRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;
}

class _FetchVersionProviderElement
    extends AutoDisposeFutureProviderElement<String> with FetchVersionRef {
  _FetchVersionProviderElement(super.provider);

  @override
  String get owner => (origin as FetchVersionProvider).owner;
  @override
  String get repo => (origin as FetchVersionProvider).repo;
}

String _$prepareReleaseControllerHash() =>
    r'b30a0b74b816b1901e8bccfb7f453ff5d0664448';

/// See also [PrepareReleaseController].
@ProviderFor(PrepareReleaseController)
final prepareReleaseControllerProvider =
    AutoDisposeNotifierProvider<PrepareReleaseController, void>.internal(
  PrepareReleaseController.new,
  name: r'prepareReleaseControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$prepareReleaseControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PrepareReleaseController = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
