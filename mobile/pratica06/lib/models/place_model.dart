class PlaceAddressModel {
  final String country;

  const PlaceAddressModel({required this.country});
}

class PlaceModel {
  final String name;
  final String imageUrl;
  final PlaceAddressModel address;
  final String description;

  const PlaceModel({
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.description,
  });
}
