import 'package:flutter/material.dart';
import '../../Models/Product.dart'; // Import Product Model

class ProductWidget extends StatelessWidget {
  // THAY VÌ NHẬN 5 BIẾN LẺ, MÌNH NHẬN LUÔN OBJECT PRODUCT CHO GỌN
  final Product product;

  const ProductWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      margin: const EdgeInsets.only(bottom: 20), // Tạo khoảng cách dưới khi dùng ListView
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // KHUNG ẢNH
          Expanded(
            flex: 5,
            child: Image.network(
              product.image, // Lấy ảnh từ object product
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          
          // KHUNG NỘI DUNG (TÊN, MÔ TẢ, GIÁ, BUTTON)
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // KHUNG TÊN
                  Text(
                    product.name, // Lấy tên từ object product
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  
                  // KHUNG MÔ TẢ (Description)
                  Text(
                    product.description, // Lấy mô tả từ object product
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  // Cụm hiển thị giá
                  Row(
                    children: [
                      Text(
                        "\$${product.oldPrice} ", // Lấy giá cũ
                        style: const TextStyle(
                          color: Colors.grey, 
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                        ), 
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "\$${product.newPrice}", // Lấy giá mới
                        style: const TextStyle(
                          color: Colors.red, 
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  
                  // NÚT MUA (Căn lề phải)
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text("Mua"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
