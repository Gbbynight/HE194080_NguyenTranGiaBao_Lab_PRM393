import 'package:flutter/material.dart';
import 'UI/Screens/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Ẩn chữ DEBUG ở góc phải
      themeMode: ThemeMode.system, // Đổi theme theo hệ thống (sáng/tối)
      
      // Theme ban ngày (Sáng)
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, // Đặt màu chủ đạo cho toàn app là màu Blue
          brightness: Brightness.light,
        ),
      ),
      
      // Theme ban đêm (Tối)
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      
      home: const Homepage(), // Trả lại const cho Homepage
    );
  }
}
