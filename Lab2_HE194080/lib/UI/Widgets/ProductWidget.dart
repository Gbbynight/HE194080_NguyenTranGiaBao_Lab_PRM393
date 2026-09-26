import 'package:flutter/material.dart';
import '../../Models/Product.dart'; // Import Product Model

class ButtonLike extends StatefulWidget {
  const ButtonLike({super.key});

  @override
  State<ButtonLike> createState() => _ButtonLikeState();
}

class _ButtonLikeState extends State<ButtonLike> {
  int x = 0; // Trả lại biến x giống của bạn

  void changeLike() {
    setState(() {
      // Logic của bạn: Nếu x == 0 thì thành 1, nếu x == 2 thì thành 3, ngược lại về 0
      x = x == 0 ? 1 : x == 2 ? 3 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: changeLike,
      // Icon: Sửa Icons.start thành Icons.star_border để tránh báo lỗi (vì không có icon tên là start)
      icon: Icon(x == 2 ? Icons.star_border : Icons.star), 
      // Color: Giữ nguyên logic của bạn
      color: x == 0 ? Colors.grey : Colors.yellow,
    );
  }
}
class ProductWidget extends StatelessWidget {

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
                  // DÒNG CHỨA TÊN SẢN PHẨM VÀ NÚT LIKE
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Khung Tên (chiếm nhiều không gian hơn)
                      Expanded(
                        flex: 3,
                        child: Text(
                          product.name, 
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Khung nút Like (Căn lề phải như ý bạn muốn)
                      const Expanded(
                        flex: 1, 
                        child: Align(
                          alignment: Alignment.centerRight, 
                          child: ButtonLike(),
                        ),
                      ),
                    ],
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
                      onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Lab4page()},
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
