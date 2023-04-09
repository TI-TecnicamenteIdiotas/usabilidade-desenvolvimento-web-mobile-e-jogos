import "dart:convert";

class Client {
  final String name;

  const Client(this.name);

  Map<String, String> toJson() => {"name": name};

  @override
  String toString() => jsonEncode(this);
}
