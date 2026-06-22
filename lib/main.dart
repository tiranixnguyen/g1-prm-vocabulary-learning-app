import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Bắt buộc để dùng ProviderScope
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

// Khởi tạo một Logger chung cho tầng ứng dụng (App level)
final Logger _appLogger = Logger('WordWiseApp');

@riverpod
String helloWorld(Ref ref) {
  return 'Hello world';
}

void main() {
  // 1. Cấu hình hệ thống logging
  Logger.root.level = Level.ALL; // Ghi nhận tất cả các cấp độ log
  Logger.root.onRecord.listen((LogRecord record) {
    // Định dạng nội dung hiển thị của log ra console
    debugPrint(
      '${record.level.name}: [${record.time}] (${record.loggerName}): ${record.message}',
    );
  });

  _appLogger.info('Ứng dụng đang khởi chạy...');

  // 2. Sử dụng ProviderContainer để đọc thử giá trị ở tầng thuần Dart (Giữ nguyên logic cũ của bạn)
  final container = ProviderContainer();
  final value = container.read(helloWorldProvider);
  _appLogger.info('Giá trị đọc từ Riverpod Provider: $value');

  runApp(
    // 3. Bắt buộc bọc MyApp trong ProviderScope để Flutter chạy được Riverpod
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Sửa lỗi cú pháp: Thêm ColorScheme vào trước .fromSeed
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 4. Tạo một Logger riêng cho màn hình Home Page để dễ quản lý dữ liệu log
  final Logger _logger = Logger('MyHomePage');

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    // 5. Ghi log mỗi khi người dùng bấm nút tăng biến đếm
    _logger.info(
      'Người dùng đã bấm nút tăng số. Giá trị hiện tại của _counter: $_counter',
    );

    // Ví dụ về việc bắt log cảnh báo nếu số lượt bấm quá lớn
    if (_counter >= 10) {
      _logger.warning(
        'Cảnh báo: Người dùng đang bấm nút quá nhiều lần (_counter = $_counter)!',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
