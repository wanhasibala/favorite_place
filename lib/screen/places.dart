import 'package:favorite_place/widgets/place_list.dart';
import 'package:flutter/material.dart';

import 'package:favorite_place/screen/add_place.dart';
import 'package:favorite_place/models/place.dart';

class PlaceScreen extends StatelessWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Favorite Place'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push<Place>(
                MaterialPageRoute(
                  builder: (context) => const AddPlace(),
                ),
              );
            },
          ),
        ],
      ),
      body: const ListPlace(places: []),
    );
  }
}
