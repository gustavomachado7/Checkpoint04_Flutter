import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/pages/home/widgets/movie_horizontal_item.dart';

class MoviesHorizontalList extends StatelessWidget {
  final List<Movie> movies;
  final void Function(Movie movie) onTap;

  const MoviesHorizontalList(
      {super.key, required this.movies, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieHorizontalItem(
            movie: movie,
            onTap: onTap,
          );
        },
      ),
    );
  }
}
