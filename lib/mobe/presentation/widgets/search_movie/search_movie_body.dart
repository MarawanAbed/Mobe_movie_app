
import 'package:movie_app/mobe/presentation/widgets/search_movie/search_bloc_builder.dart';

import '../../../../../lib_imports.dart';
import '../../bloc/movie/search/search_movies_cubit.dart';

class SearchMovieBody extends StatelessWidget {
  const SearchMovieBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SearchMoviesCubit>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          AppTextFormField(
            hintText: AppStrings.search,
            onChanged: (value) {
              cubit.searchMovies(value);
            },
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SearchBlocBuilder(),
        ],
      ),
    );
  }
}