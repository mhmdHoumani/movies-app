import 'package:first_project/Model/MovieModel.dart';
import 'package:flutter/material.dart';

class MovieDetailsThumbnail extends StatelessWidget {
  final String imagePath;

  const MovieDetailsThumbnail({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(this.imagePath), fit: BoxFit.cover))
              // child: Image.asset(
              //   "images/flag.jpg",
              // ),
            ),
            Icon(Icons.play_circle_outline, size: 100, color: Colors.white),
          ],
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff000000).withOpacity(0.001),
              Color(0xff000000)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
      ],
    );
  }
}

class MovieDetailsHeader extends StatelessWidget {
  final MovieModel movie;

  const MovieDetailsHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          MoviePoster(poster: movie.getImagePath),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${movie.getDate} - ${movie.getDuration} minutes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black26,
                    )),
                Text("${movie.getTitle}",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({Key? key, required this.poster}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(poster), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      color: Colors.grey,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    );
  }
}

class MovieExtraImages extends StatelessWidget {
  final List<String> posters;

  const MovieExtraImages({Key? key, required this.posters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("More Movie Posters".toUpperCase(),
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black26,
                  fontWeight: FontWeight.w700)),
          SizedBox(height: 15),
          Container(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 6),
              itemCount: posters.length,
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(posters.elementAt(index)),
                          fit: BoxFit.cover,
                        ))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}