import 'package:flutter/material.dart';
import 'package:movie_app/core/routes/routes.dart';
import 'package:movie_app/movie/home/presentation/widgets/commmon/category_items.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CategoryItems(
          title: 'Movie',
          icon: Icons.movie,
          color: Colors.red,
          screen: Routes.genre,
          arguments:  {
            'title': 'Movie',
            'isMovie': true,
          }),
        CategoryItems(
          title: 'Tv',
          icon: Icons.tv,
          screen: Routes.genre,
          arguments:  {
            'title': 'Tv',
            'isMovie': false,
          },
          color: Colors.green,
        ),
      ],
    );
  }
}
