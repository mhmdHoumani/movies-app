import 'package:first_project/Model/MovieModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'MovieDetails.dart';

class MovieItemDetails extends StatelessWidget {
  final MovieModel movie;

  const MovieItemDetails({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie ${this.movie.getTitle}"),
        backgroundColor: Colors.blueGrey.shade700,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView(
        children: [
          MovieDetailsThumbnail(imagePath: movie.getImagePath),
          MovieDetailsHeader(movie: movie),
          HorizontalLine(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Some more details text about the movie",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                Text(
                    "Extra details about the movie like cast, directors, awards, ...",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ],
            ),
          ),
          HorizontalLine(),
          MovieExtraImages(posters: movie.getImages),
        ],
      ),
    );
  }
}