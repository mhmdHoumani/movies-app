import 'package:first_project/Model/MovieModel.dart';
import 'package:flutter/material.dart';

import 'MovieItemDetails.dart';

class Movie extends StatelessWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MovieModel> movies = MovieModel.getMovies();
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade700,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                  margin: EdgeInsets.all(5),
                  elevation: 4.5,
                  color: Colors.white12.withOpacity(0.3),
                  child: ListTile(
                    leading: CircleAvatar(
                        maxRadius: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    movies.elementAt(index).getImagePath),
                                fit: BoxFit.cover),
                          ),
                        )),
                    title: Text(movies.elementAt(index).getTitle),
                    subtitle: Text(
                        "Date: ${movies.elementAt(index).getDate}, Duration: ${movies.elementAt(index).getDuration}"),
                    trailing: Text("..."),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieItemDetails(
                                movie: movies.elementAt(index)))),
                    onLongPress: () => {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(milliseconds: 1000),
                        content: Text(
                            "Movie name ${movies.elementAt(index)} is Removed"),
                      )),
                    },
                  )),
            );
          }),
    );
  }
}
