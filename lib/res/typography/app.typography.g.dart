// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.typography.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appTypography)
final appTypographyProvider = AppTypographyProvider._();

final class AppTypographyProvider
    extends $FunctionalProvider<AppTypography, AppTypography, AppTypography>
    with $Provider<AppTypography> {
  AppTypographyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appTypographyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appTypographyHash();

  @$internal
  @override
  $ProviderElement<AppTypography> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppTypography create(Ref ref) {
    return appTypography(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppTypography value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppTypography>(value),
    );
  }
}

String _$appTypographyHash() => r'2888820cfcac181f266f440fe34b75e4f2d9533e';
