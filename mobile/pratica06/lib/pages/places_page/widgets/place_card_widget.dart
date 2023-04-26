import 'package:flutter/material.dart';

import '../places_sub_page/places_sub_page.dart';
import '../../../models/place_model.dart';

class PlaceCardWidget extends StatelessWidget {
  final PlaceModel place;

  const PlaceCardWidget({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PlacesSubPage(place: place),
          ),
        ),
        child: Image.network(
          place.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
