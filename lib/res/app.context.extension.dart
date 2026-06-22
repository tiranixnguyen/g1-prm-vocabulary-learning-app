import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'colors/app.colors.dart';
import 'dimensions/app.dimensions.dart';
import 'resources.dart';
import 'typography/app.typography.dart';

/// Extension dành riêng cho WidgetRef (Thường dùng trong ConsumerWidget / Consumer)
extension WordWiseRefX on WidgetRef {
  Resources get res => Resources.of(this);
  AppColorsTheme get colors => watch(appColorsStateProvider);
  AppDimensions get dimensions => watch(appDimensionsProvider);
  AppTypography get typography => watch(appTypographyProvider); // Thêm dòng này
}

/// Extension dành cho BuildContext (Trong trường hợp bạn muốn dùng shortcut từ context)
extension WordWiseContextX on BuildContext {
  /// Tiện ích lấy nhanh ProviderContainer nếu cần đọc giá trị không mang tính lắng nghe (read)
  AppColorsTheme colors(WidgetRef ref) => ref.watch(appColorsStateProvider);
  AppDimensions dimensions(WidgetRef ref) => ref.watch(appDimensionsProvider);
}
