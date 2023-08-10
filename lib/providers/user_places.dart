import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:favorite_place/models/place.dart';

class UserPlaceNotifier extends StateNotifier<List<Place>> {
  UserPlaceNotifier() : super(const []);

  void addPlace(String place) {
    final newPlace = Place(name: place);
    state = [newPlace, ...state];
  }
}

final userPlaceProvider = StateNotifierProvider<UserPlaceNotifier,List<Place>>(
  (ref) => UserPlaceNotifier(),
);
