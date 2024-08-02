import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recycle_app/Screens/material_details.dart';
import 'package:recycle_app/models/material_info.dart';
import 'package:recycle_app/provider/favorite_provider.dart';

class FavoriteScreen extends StatefulWidget {
  final String username;

  const FavoriteScreen({super.key, required this.username});

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void initState() {
    super.initState();
    // Load favorite materials when the screen is initialized
    Future.microtask(() => Provider.of<FavoriteProvider>(context, listen: false)
        .loadFavoriteMaterials(widget.username));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Favorites',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))),
        ),
        body: Consumer<FavoriteProvider>(
          builder: (context, favoriteProvider, child) {
            if (favoriteProvider.favoriteMaterials.isEmpty) {
              return const Center(child: Text('No favorite materials found'));
            }
            return ListView.builder(
              itemCount: favoriteProvider.favoriteMaterials.length,
              itemBuilder: (context, index) {
                final material = favoriteProvider.favoriteMaterials[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15), // Adjust the radius as needed
                  ),
                  margin: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF426560), Color(0xFFFCF8F0)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: ListTile(
                      leading: CachedNetworkImage(
                        imageUrl: material['material_symbol'],
                        width: 60,
                        height: 60,
                        placeholder: (context, url) => Container(
                          width: 60,
                          height: 60,
                          color: Colors.transparent,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error, color: Colors.red),
                      ),
                      title: Text(material['material_name'],
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold))),
                      subtitle: Text('Instructions & notes',
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ))),
                      trailing: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaterialDetails(
                              material: MaterialInfo(
                                material: material['material_name'],
                                image: material['material_symbol'],
                                instructions: material['instructions'],
                                additionalNotes: material['additional_notes'],
                              ),
                              username: widget.username,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            );
          },
        ));
  }
}
