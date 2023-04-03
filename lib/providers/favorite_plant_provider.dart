import 'package:flutter/material.dart';
import 'package:flutter_tumbuh_app/models/plant_model.dart';

class FavoritePlantProvider extends ChangeNotifier {
  final List<Plant> _favoritePlants = [];

  List<Plant> get favoritePlants => _favoritePlants;

  void favorite(Plant plant, bool isFavorite) {
    isFavorite ? _favoritePlants.add(plant) : _favoritePlants.remove(plant);
    notifyListeners();
  }
}
