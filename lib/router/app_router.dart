import 'package:api_with_bloc_gorouter/pages/details_page.dart';
import 'package:api_with_bloc_gorouter/pages/home_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(path: '/details', builder: (context, state) => const DetailsPage()),
  ]);
}
