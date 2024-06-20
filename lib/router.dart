part of 'main.dart';

GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const InputScreen(),
      routes: [
        GoRoute(
          path: 'result',
          builder: (context, state) => const ResultScreen(),
        ),
      ],
    ),
  ],
);
