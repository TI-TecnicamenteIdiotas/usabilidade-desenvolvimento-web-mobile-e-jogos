import "dart:convert";

class Product {
  String? name = null;
  num? price = null;

  Product.Empty();

  Product(this.name, this.price);

  Map toJson() => {"name": name, "price": price};

  @override
  String toString() => jsonEncode(this);
}
