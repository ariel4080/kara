import 'package:go_router/go_router.dart';
import 'package:kara/features/auth/views/login_view.dart';
import 'package:kara/features/splash/views/splash_view.dart';

class AppNavigation {
  static const String _splash = '/splash';
  static const String _login = '/login';

  static final routerConfig = [
    GoRoute(name: _splash, path: _splash, builder:(context, state) => const SplashView(),),
    GoRoute(name: _login, path: _login, builder:(context, state) => const LoginView(),),
  ];

  static final GoRouter appRouter = GoRouter(
    initialLocation: _splash,
    routes: routerConfig,
  );
}