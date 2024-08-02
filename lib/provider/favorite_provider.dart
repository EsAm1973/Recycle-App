import 'package:flutter/material.dart';
import 'package:recycle_app/database/Db_helper.dart';


class FavoriteProvider with ChangeNotifier {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> _favoriteMaterials = [];
  bool _isFavorite = false;

  List<Map<String, dynamic>> get favoriteMaterials => _favoriteMaterials;
  bool get isFavorite => _isFavorite;

  Future<void> loadFavoriteMaterials(String username) async {
    _favoriteMaterials = await _dbHelper.getFavoriteMaterials(username);
    notifyListeners();
  }

  Future<void> toggleFavorite(String username, Map<String, dynamic> material) async {
    if (_isFavorite) {
      await _dbHelper.removeFavoriteMaterial(username, material['material_name']);
    } else {
      await _dbHelper.insertFavoriteMaterial(
        username,
        material['material_name'],
        material['material_symbol'],
        material['instructions'],
        material['additional_notes'],
      );
    }
    _isFavorite = !_isFavorite;
    await loadFavoriteMaterials(username); // Reload the favorites
  }

  Future<void> checkIfFavorite(String username, String materialName) async {
    _isFavorite = await _dbHelper.isFavorite(username, materialName);
    notifyListeners();
  }
}
