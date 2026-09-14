//Declear product properties
class Product {
  final int id;
  final String name;
  final int quantity;
  final double price;
  final String? description;
  final String? image;

  //Contrustor Product information
  Product({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.image,
    this.description,
  });

  //Convert JSON data to a Product object
  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
      description: json['descripton'] as String?,
    );
  }

  //Convert a Product object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'price': price,
      'image': image,
      'description': description,
  };}

  // Create a new Product object with updated values
  Product copyTo({
    int? id,
    String? name,
    int? quantity,
    double? price,
    String? image,
    String? description,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }
}
