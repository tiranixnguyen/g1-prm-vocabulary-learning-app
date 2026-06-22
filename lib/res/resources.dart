import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'colors/app.colors.dart';
import 'dimensions/app.dimensions.dart';
import 'typography/app.typography.dart'; // Thêm import này

class Resources {
  final AppColorsTheme colors;
  final AppDimensions dimensions;
  final AppTypography typography; // Thêm biến này

  Resources({
    required this.colors,
    required this.dimensions,
    required this.typography,
  });

  factory Resources.of(WidgetRef ref) {
    return Resources(
      colors: ref.watch(appColorsStateProvider),
      dimensions: ref.watch(appDimensionsProvider),
      typography: ref.watch(appTypographyProvider), // Thêm dòng này
    );
  }
}
