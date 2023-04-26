import 'package:flutter/material.dart';

import '../../../models/place_model.dart';

class PlacesSubPage extends StatelessWidget {
  final PlaceModel place;

  const PlacesSubPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(64.0),
              child: Text(
                "${place.name}, ${place.address.country}",
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(64.0),
              child: Text(
                place.description,
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
