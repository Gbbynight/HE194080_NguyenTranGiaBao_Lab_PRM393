import 'package:flutter/material.dart';

class Productdetailpage1 extends StatelessWidget {
  const Productdetailpage1({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions [
          onButton(onPressed: (){Navigator.pop(context);},)
        ]: Text(product.name),
      ),
    )
  }
}
