import 'package:calculatrix/src/view/screens/home_screen.dart';
import 'package:calculatrix/src/view/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class CalculatrixRouter {
  late final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: "home",
        path: "/",
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        name: "splash",
        path: "/splash",
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
