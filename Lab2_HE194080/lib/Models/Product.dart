class Product {
  final String id;
  final String name;
  final String image;
  final String description;
  final double oldPrice;
  final double newPrice;

  Product({
    required this.id,
    required this.name,
    required this.image,
    this.description = "",
    this.oldPrice = 0.0,
    this.newPrice = 0.0,
  });
}
