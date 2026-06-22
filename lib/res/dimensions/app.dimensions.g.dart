// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dimensions.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appDimensions)
final appDimensionsProvider = AppDimensionsProvider._();

final class AppDimensionsProvider
    extends $FunctionalProvider<AppDimensions, AppDimensions, AppDimensions>
    with $Provider<AppDimensions> {
  AppDimensionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDimensionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDimensionsHash();

  @$internal
  @override
  $ProviderElement<AppDimensions> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDimensions create(Ref ref) {
    return appDimensions(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDimensions value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDimensions>(value),
    );
  }
}

String _$appDimensionsHash() => r'48c98cb1718eec01820ea86f280e7e1d734eac78';
