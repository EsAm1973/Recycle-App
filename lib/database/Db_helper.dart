import 'dart:convert'; // Add this for JSON serialization
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'recycle_app.db');

    return await openDatabase(
      path,
      version: 2, // Increment the version
      onCreate: (db, version) async {
        await db.execute(
          "CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT)",
        );
        await db.execute(
          "CREATE TABLE favorite_materials(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, material_name TEXT, material_symbol TEXT, instructions TEXT, additional_notes TEXT)",
        );
      },
    );
  }

  Future<void> insertUser(String username, String password) async {
    final db = await database;

    await db.insert(
      'users',
      {'username': username, 'password': password},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Map<String, String>?> getUser() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('users');

    if (maps.isNotEmpty) {
      return {
        'username': maps.first['username'],
        'password': maps.first['password'],
      };
    }

    return null;
  }

  Future<void> insertFavoriteMaterial(
      String username,
      String materialName,
      String materialSymbol,
      List<String> instructions,
      List<String> additionalNotes) async {
    final db = await database;

    await db.insert(
      'favorite_materials',
      {
        'username': username,
        'material_name': materialName,
        'material_symbol': materialSymbol,
        'instructions': jsonEncode(instructions),
        'additional_notes': jsonEncode(additionalNotes),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getFavoriteMaterials(
      String username) async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query(
      'favorite_materials',
      where: 'username = ?',
      whereArgs: [username],
    );

    return maps.map((map) {
      return {
        ...map,
        'instructions': List<String>.from(jsonDecode(map['instructions'])),
        'additional_notes':
            List<String>.from(jsonDecode(map['additional_notes'])),
      };
    }).toList();
  }

  Future<bool> isFavorite(String username, String materialName) async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query(
      'favorite_materials',
      where: 'username = ? AND material_name = ?',
      whereArgs: [username, materialName],
    );

    return maps.isNotEmpty;
  }

  Future<void> removeFavoriteMaterial(
      String username, String materialName) async {
    final db = await database;

    await db.delete(
      'favorite_materials',
      where: 'username = ? AND material_name = ?',
      whereArgs: [username, materialName],
    );
  }
}
