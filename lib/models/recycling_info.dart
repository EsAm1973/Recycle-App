import 'package:recycle_app/models/material_info.dart';

class RecyclingInfo {
  final String material;
  final String symbol;
  final String category;
  final List<MaterialInfo> subcategories;

  RecyclingInfo({
    required this.material,
    required this.symbol,
    required this.category,
    required this.subcategories,
  });
}
