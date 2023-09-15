// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'd41030938e1cacc462f8305990445b3565ea12a4';

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

abstract class _$Counter extends BuildlessAsyncNotifier<int> {
  late final int nilai;

  Future<int> build({
    required int nilai,
  });
}

/// See also [Counter].
@ProviderFor(Counter)
const counterProvider = CounterFamily();

/// See also [Counter].
class CounterFamily extends Family<AsyncValue<int>> {
  /// See also [Counter].
  const CounterFamily();

  /// See also [Counter].
  CounterProvider call({
    required int nilai,
  }) {
    return CounterProvider(
      nilai: nilai,
    );
  }

  @override
  CounterProvider getProviderOverride(
    covariant CounterProvider provider,
  ) {
    return call(
      nilai: provider.nilai,
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
  String? get name => r'counterProvider';
}

/// See also [Counter].
class CounterProvider extends AsyncNotifierProviderImpl<Counter, int> {
  /// See also [Counter].
  CounterProvider({
    required int nilai,
  }) : this._internal(
          () => Counter()..nilai = nilai,
          from: counterProvider,
          name: r'counterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$counterHash,
          dependencies: CounterFamily._dependencies,
          allTransitiveDependencies: CounterFamily._allTransitiveDependencies,
          nilai: nilai,
        );

  CounterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.nilai,
  }) : super.internal();

  final int nilai;

  @override
  Future<int> runNotifierBuild(
    covariant Counter notifier,
  ) {
    return notifier.build(
      nilai: nilai,
    );
  }

  @override
  Override overrideWith(Counter Function() create) {
    return ProviderOverride(
      origin: this,
      override: CounterProvider._internal(
        () => create()..nilai = nilai,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        nilai: nilai,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<Counter, int> createElement() {
    return _CounterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CounterProvider && other.nilai == nilai;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nilai.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CounterRef on AsyncNotifierProviderRef<int> {
  /// The parameter `nilai` of this provider.
  int get nilai;
}

class _CounterProviderElement extends AsyncNotifierProviderElement<Counter, int>
    with CounterRef {
  _CounterProviderElement(super.provider);

  @override
  int get nilai => (origin as CounterProvider).nilai;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
