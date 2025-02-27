import 'package:book_st/Features/Splash/presentation/views/widgets/splash_view.dart';
import 'package:book_st/Features/home/presentation/views/book_details_View.dart';
import 'package:book_st/Features/home/presentation/views/home_view.dart';
import 'package:book_st/Features/search/presentation/search.view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = '/HomeView';
  static const KBookDetailsView = '/BookDetailsView';
  static const KSearchView = '/SearchView';

  

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
