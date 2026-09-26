import 'package:flutter/material.dart';
import 'ProductWidget.dart';
import '../../Models/Product.dart'; // Import class Product

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. TẠO DỮ LIỆU TĨNH SỬ DỤNG CLASS PRODUCT
    final List<Product> products = [
      Product(
        id: "Pd001",
        name: "Okane Bear",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUC5r23DLFwCZXSinLd3DNjoZWFSuIvRkKPjXSbfie2Q&s=10",
        description: "Gấu bông Okane mềm mịn, thích hợp làm quà tặng. Kích thước 30cm.",
        oldPrice: 30.0,
        newPrice: 20.0,
      ),
      Product(
        id: "Pd002",
        name: "Money Cat",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUC5r23DLFwCZXSinLd3DNjoZWFSuIvRkKPjXSbfie2Q&s=10", 
        description: "Mèo thần tài may mắn, vẫy tay gọi khách. Đem lại tài lộc.",
        oldPrice: 50.0,
        newPrice: 45.0,
      ),
      Product(
        id: "Pd003",
        name: "Lucky Dog",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUC5r23DLFwCZXSinLd3DNjoZWFSuIvRkKPjXSbfie2Q&s=10",
        description: "Chó nhồi bông siêu dễ thương, chất liệu vải nhung cao cấp.",
        oldPrice: 25.0,
        newPrice: 18.0,
      ),
    ];

    return Center(
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          for(int i = 0; i < products.length; i++)
            ProductWidget(product: products[i])
        ]
      )
    );
  }
}
