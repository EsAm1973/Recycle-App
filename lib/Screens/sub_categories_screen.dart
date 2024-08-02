import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recycle_app/Screens/material_details.dart';
import 'package:recycle_app/models/recycling_info.dart';

class SubCategoryPage extends StatefulWidget {
  final RecyclingInfo recyclingInfo;
  final String username;
  const SubCategoryPage(
      {super.key, required this.recyclingInfo, required this.username});

  @override
  State<SubCategoryPage> createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
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
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.recyclingInfo.category,
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w500))),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: widget.recyclingInfo.subcategories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MaterialDetails(
                                username: widget.username,
                                material: widget
                                    .recyclingInfo.subcategories[index])));
                      },
                      child: Card(
                        elevation: 8.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                              imageUrl: widget
                                  .recyclingInfo.subcategories[index].image,
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
                            const SizedBox(height: 10.0),
                            Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                widget.recyclingInfo.subcategories[index]
                                    .material,
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
