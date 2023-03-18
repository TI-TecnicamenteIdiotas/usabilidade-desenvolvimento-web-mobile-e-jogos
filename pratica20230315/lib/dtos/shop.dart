import "dart:convert";

class Shop {
  final String name;
  final String address;

  const Shop(this.name, this.address);

  Map toJson() => {"name": name, "address": address};

  @override
  String toString() => jsonEncode(this);
}
