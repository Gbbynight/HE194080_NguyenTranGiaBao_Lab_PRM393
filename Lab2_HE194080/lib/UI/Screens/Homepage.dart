import 'package:flutter/material.dart';
import '../Widgets/MyAppBar.dart';
import '../Widgets/BodyWidget.dart'; // Import thêm BodyWidget

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      // Dùng SingleChildScrollView để màn hình có thể cuộn được, tránh bị lỗi tràn (overflow)
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // --- 1. PHẦN ẢNH VÀ CHỮ CŨ ---
            Image.asset(
              'assets/images/images.jpg',
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'Hello ',
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40), // Tạo một khoảng trống giữa 2 phần
            
            // --- 2. PHẦN PRODUCT WIDGET ---
            const Text(
              "Sản phẩm nổi bật",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const BodyWidget(), // Hiển thị ProductWidget ở đây
            
            const SizedBox(height: 40), // Tạo khoảng trống ở dưới cùng
          ],
        ),
      ),
    );
  }
}
