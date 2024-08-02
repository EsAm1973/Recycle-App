import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recycle_app/models/material_info.dart';
import 'package:recycle_app/provider/favorite_provider.dart';

class MaterialDetails extends StatefulWidget {
  const MaterialDetails(
      {super.key, required this.material, required this.username});
  final MaterialInfo material;
  final String username;

  @override
  State<MaterialDetails> createState() => _MaterialDetailsState();
}

class _MaterialDetailsState extends State<MaterialDetails> {
  bool isFavorite = false;
  late FavoriteProvider _favoriteProvider;

  @override
  void initState() {
    super.initState();
    _favoriteProvider = Provider.of<FavoriteProvider>(context, listen: false);
    _favoriteProvider.checkIfFavorite(
        widget.username, widget.material.material);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 40,
            ),
          ),
          actions: [
            Consumer<FavoriteProvider>(
              builder: (context, favoriteProvider, child) {
                return IconButton(
                  onPressed: () {
                    _favoriteProvider.toggleFavorite(widget.username, {
                      'material_name': widget.material.material,
                      'material_symbol': widget.material.image,
                      'instructions': widget.material.instructions,
                      'additional_notes': widget.material.additionalNotes,
                    });
                  },
                  icon: Icon(
                    size: 30,
                    favoriteProvider.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        favoriteProvider.isFavorite ? Colors.red : Colors.black,
                  ),
                );
              },
            ),
          ],
          title: Text(
            widget.material.material,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CachedNetworkImage(
                    imageUrl: widget.material.image,
                    width: 300,
                    height: 300,
                    placeholder: (context, url) => Container(
                      width: 300,
                      height: 300,
                      color: Colors.transparent,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error, color: Colors.red),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Instructions',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.material.instructions.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 15,
                      ),
                      title: Text(
                        widget.material.instructions[index],
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                Text(
                  'Notes',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.material.additionalNotes.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 15,
                      ),
                      title: Text(
                        widget.material.additionalNotes[index],
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
