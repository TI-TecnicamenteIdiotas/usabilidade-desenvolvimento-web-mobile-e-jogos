import 'package:flutter/material.dart';

import '../../../models/place_model.dart';
import 'widgets/place_card_widget.dart';

class PlacesPage extends StatelessWidget {
  final List<PlaceModel> places;

  const PlacesPage({Key? key, required this.places}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (_, index) => PlaceCardWidget(
        place: places[index],
      ),
    );
  }
}
