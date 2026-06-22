import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'views/pages/onboarding_screen.dart';
import 'res/app.context.extension.dart';

final Logger _appLogger = Logger('WordWiseApp');

void main() {
  // 1. Cấu hình hệ thống logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord record) {
    debugPrint(
      '${record.level.name}: [${record.time}] (${record.loggerName}): ${record.message}',
    );
  });

  _appLogger.info('Ứng dụng WordWise đang khởi chạy...');

  runApp(const ProviderScope(child: MyApp()));
}

// Chuyển MyApp thành ConsumerWidget để lắng nghe hệ thống màu sắc từ Riverpod ngay từ root
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Lấy bảng màu hiện tại (Light/Dark Mode) từ Provider thông qua extension của bạn
    final colors = ref.colors;

    return MaterialApp(
      title: 'WordWise',
      debugShowCheckedModeBanner:
          false, // Tắt banner DEBUG cho giao diện sạch đẹp
      // Khởi tạo ThemeData đồng bộ với Palette màu của app
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: colors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: colors.primary,
          brightness: Brightness
              .dark, // Ép cấu hình sang Dark để đồng bộ với màn onboarding tối
        ),
      ),

      home: const OnboardingScreen(),
    );
  }
}
