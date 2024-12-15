// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_product_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$suggestionProductControllerHash() =>
    r'475b3b946c928e9ca556a537f2a015ba04f97429';

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

abstract class _$SuggestionProductController
    extends BuildlessAutoDisposeAsyncNotifier<List<Product>> {
  late final int id;

  FutureOr<List<Product>> build(
    int id,
  );
}

/// See also [SuggestionProductController].
@ProviderFor(SuggestionProductController)
const suggestionProductControllerProvider = SuggestionProductControllerFamily();

/// See also [SuggestionProductController].
class SuggestionProductControllerFamily
    extends Family<AsyncValue<List<Product>>> {
  /// See also [SuggestionProductController].
  const SuggestionProductControllerFamily();

  /// See also [SuggestionProductController].
  SuggestionProductControllerProvider call(
    int id,
  ) {
    return SuggestionProductControllerProvider(
      id,
    );
  }

  @override
  SuggestionProductControllerProvider getProviderOverride(
    covariant SuggestionProductControllerProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'suggestionProductControllerProvider';
}

/// See also [SuggestionProductController].
class SuggestionProductControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SuggestionProductController,
        List<Product>> {
  /// See also [SuggestionProductController].
  SuggestionProductControllerProvider(
    int id,
  ) : this._internal(
          () => SuggestionProductController()..id = id,
          from: suggestionProductControllerProvider,
          name: r'suggestionProductControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$suggestionProductControllerHash,
          dependencies: SuggestionProductControllerFamily._dependencies,
          allTransitiveDependencies:
              SuggestionProductControllerFamily._allTransitiveDependencies,
          id: id,
        );

  SuggestionProductControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<List<Product>> runNotifierBuild(
    covariant SuggestionProductController notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(SuggestionProductController Function() create) {
    return ProviderOverride(
      origin: this,
      override: SuggestionProductControllerProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<SuggestionProductController,
      List<Product>> createElement() {
    return _SuggestionProductControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SuggestionProductControllerProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SuggestionProductControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Product>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SuggestionProductControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SuggestionProductController,
        List<Product>> with SuggestionProductControllerRef {
  _SuggestionProductControllerProviderElement(super.provider);

  @override
  int get id => (origin as SuggestionProductControllerProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
