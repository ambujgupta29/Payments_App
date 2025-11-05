import 'package:go_router/go_router.dart';
import 'package:payments_app/screens/home/bottom_nav_bar.dart';
import 'package:payments_app/screens/onboarding/onboarding_screen.dart';
import 'package:payments_app/screens/onboarding/sign_in_screen.dart';
import 'package:payments_app/screens/onboarding/sign_up_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/signin',
      name: 'signin',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) {
        return SignUpScreen();
      },
    ),
    GoRoute(
      path: '/bottomnav',
      name: 'bottomnav',
      builder: (context, state) {
        return BottomNavScreen();
      },
    ),
  ],
);
