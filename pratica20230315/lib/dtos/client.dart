import "dart:convert";

class Client {
  final String name;

  const Client(this.name);

  Map toJson() => {"name": name};

  @override
  String toString() => jsonEncode(this);
}
