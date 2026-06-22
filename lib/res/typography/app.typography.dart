// app.typography.dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app.typography.g.dart';

@riverpod
AppTypography appTypography(Ref ref) {
  return AppTypography();
}

class AppTypography {
  // Font Family mặc định (Bạn có thể cấu hình Inter hoặc Plus Jakarta Sans trong pubspec.yaml)
  final String _fontFamily = 'Inter';

  // Kiểu chữ cho Tiêu đề lớn đầu màn hình (Giống "Điều làm cho Memrise khác biệt?")
  TextStyle get headingLarge => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    height: 1.25,
    letterSpacing: -0.5,
  );

  // Kiểu chữ cho các tính năng/dòng lợi ích liệt kê
  TextStyle get bodyFeature => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w600, // Semi-bold giúp đọc rõ trên nền tối
    height: 1.4,
  );

  // Kiểu chữ trên nút bấm chính (Button)
  TextStyle get buttonLabel => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.2,
  );

  // Kiểu chữ cho text link phụ bên dưới ("Tôi đã có tài khoản")
  TextStyle get textLink => TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );
}
