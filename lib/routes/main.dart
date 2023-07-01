import 'package:go_router/go_router.dart';
import 'package:stududent_book/pages/home.view.dart';
import 'package:stududent_book/pages/subject.creation.view.dart';

// GoRouter configuration
final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      name: 'subjectCreation',
      path: '/subjectCreation',
      builder: (context, state) => const SubjectCreationView(),
    ),
  ],
);