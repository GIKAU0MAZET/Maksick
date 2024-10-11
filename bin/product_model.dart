import 'dart:convert';

class ProductModel{
  int id;
  String title;
  String category;
  double price;

  ProductModel({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
  });

  ProductModel copyWith({
    int? id,
    String? title,
    String? category,
    double? price,
  }) {
    return ProductModel(
      id: id ?? this.id, 
      title: title ?? this.title,
      category: category ?? this.category,
      price: price ?? this.price
      );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "title": title,
      "category": category,
      "price": price,
    };
    }

    factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(id: map['id'] as int,
    title: map['title'] as String,
    category: map['category'] as String, 
    price: map['price'] as double,
    );
  }

    String toJson() => json.encode(String);

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString(){
    return "ProductModel(id: $id, title: $title, category: $category, price: $price)";
  }

}
