// app.colors.dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'base.colors.dart';

part 'app.colors.g.dart';

@riverpod
class AppColorsState extends _$AppColorsState {
  @override
  AppColorsTheme build() {
    return AppColorsTheme.dark(); // by default at start
  }

  // Hàm để UI gọi khi người dùng bấm switch đổi theme
  void toggleTheme(bool isDarkMode) {
    state = isDarkMode ? AppColorsTheme.dark() : AppColorsTheme.light();
  }
}

// Class chứa các biến màu của hệ thống
class AppColorsTheme {
  final Color primary;
  final Color background;
  final Color textPrimary;
  final Color textSecondary;

  AppColorsTheme({
    required this.primary,
    required this.background,
    required this.textPrimary,
    required this.textSecondary,
  });

  // Định nghĩa màu cho Light Mode
  factory AppColorsTheme.light() => AppColorsTheme(
    primary: BaseColors.indigo600,
    background: BaseColors.slate50,
    textPrimary: BaseColors.slate800,
    textSecondary: BaseColors.slate500,
  );

  // Định nghĩa màu cho Dark Mode
  factory AppColorsTheme.dark() => AppColorsTheme(
    primary: BaseColors.indigo400,
    background: const Color(0xFF0F172A), // Slate 900 cho ban đêm
    textPrimary: const Color(0xFFF1F5F9), // Slate 100
    textSecondary: const Color(0xFF94A3B8), // Slate 400
  );
}
