import 'package:bookly_app_1/core/utils/service_locator.dart';
import 'package:bookly_app_1/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_1/features/home/data/repos/home_repo.dart';
import 'package:bookly_app_1/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app_1/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app_1/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app_1/features/home/presentation/views/home_view.dart';
import 'package:bookly_app_1/features/search/presentation/views/search_view.dart';
import 'package:bookly_app_1/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String KHomeView = '/homeView';
  static String KBookDetailsView = '/bookDetailsView';
  static String KSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: KHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: BookDetailsView(bookModel: state.extra as BookModel,)),
      ),
      GoRoute(path: KSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
