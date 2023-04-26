import 'package:pratica06/models/place_model.dart';

class Data {
  static const places = [
    PlaceModel(
      name: "Nova York",
      imageUrl: "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      address: PlaceAddressModel(
        country: "EUA",
      ),
      description: "description",
    ),
    PlaceModel(
      name: "Grand Canion",
      imageUrl: "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      address: PlaceAddressModel(
        country: "EUA",
      ),
      description: "description",
    ),
  ];
}
