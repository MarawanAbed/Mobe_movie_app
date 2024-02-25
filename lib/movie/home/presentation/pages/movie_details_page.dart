import 'package:flutter/material.dart';
import 'package:movie_app/movie/home/presentation/widgets/movie_details/movie_details_body.dart';

import '../../../../core/themes/app_colors.dart';

class MoviePageDetails extends StatelessWidget {
  const MoviePageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackGroundNavBar,
        body: MovieDetailsBody(),
      ),
    );
  }
}