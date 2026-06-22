// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.colors.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppColorsState)
final appColorsStateProvider = AppColorsStateProvider._();

final class AppColorsStateProvider
    extends $NotifierProvider<AppColorsState, AppColorsTheme> {
  AppColorsStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appColorsStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appColorsStateHash();

  @$internal
  @override
  AppColorsState create() => AppColorsState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppColorsTheme value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppColorsTheme>(value),
    );
  }
}

String _$appColorsStateHash() => r'ce2b6723ddae68e3fe285932f235e1ff9e083448';

abstract class _$AppColorsState extends $Notifier<AppColorsTheme> {
  AppColorsTheme build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AppColorsTheme, AppColorsTheme>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppColorsTheme, AppColorsTheme>,
              AppColorsTheme,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
