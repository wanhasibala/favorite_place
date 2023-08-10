import 'package:favorite_place/providers/user_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favorite_place/widgets/place_list.dart';
import 'package:favorite_place/models/place.dart';
import 'package:favorite_place/screen/add_place.dart';

class PlaceScreen extends ConsumerWidget {
  const PlaceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlaceProvider);

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
      body: ListPlace(places: userPlaces),
    );
  }
}
