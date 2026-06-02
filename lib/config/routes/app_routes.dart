import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Route names as constants
class RouteNames {
  // Auth Routes
  static const String splash = 'splash';
  static const String login = 'login';
  static const String register = 'register';
  static const String roleSelection = 'role_selection';
  static const String farmerOnboarding = 'farmer_onboarding';

  // Main Routes
  static const String home = 'home';
  static const String dashboard = 'dashboard';
  static const String profile = 'profile';
  static const String settings = 'settings';

  // Feature Routes
  static const String diagnostics = 'diagnostics';
  static const String diagnosticsDetail = 'diagnostics_detail';
  static const String diagnosticsHistory = 'diagnostics_history';
  static const String advisory = 'advisory';
  static const String advisoryChat = 'advisory_chat';
  static const String marketplace = 'marketplace';
  static const String marketplaceDetail = 'marketplace_detail';
  static const String myListings = 'my_listings';
  static const String farmWorkspace = 'farm_workspace';
  static const String farmDetail = 'farm_detail';
  static const String sustainability = 'sustainability';
  static const String subscription = 'subscription';
}

/// GoRouter configuration provider
final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/',
    redirect: (context, state) {
      final isLoggedIn = authState.asData?.value != null;
      final isSplash = state.matchedLocation == '/';

      if (!isLoggedIn && !isSplash) {
        return '/';
      }

      if (isLoggedIn && isSplash) {
        return '/dashboard';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        name: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: RouteNames.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/role-selection',
        name: RouteNames.roleSelection,
        builder: (context, state) => const RoleSelectionScreen(),
      ),
      GoRoute(
        path: '/farmer-onboarding',
        name: RouteNames.farmerOnboarding,
        builder: (context, state) => const FarmerOnboardingScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return MainNavigationShell(
            child: child,
            location: state.matchedLocation,
          );
        },
        routes: [
          GoRoute(
            path: '/dashboard',
            name: RouteNames.dashboard,
            builder: (context, state) => const FarmerDashboardScreen(),
          ),
          GoRoute(
            path: '/diagnostics',
            name: RouteNames.diagnostics,
            builder: (context, state) => const DiagnosticsScreen(),
          ),
          GoRoute(
            path: '/advisory',
            name: RouteNames.advisory,
            builder: (context, state) => const AdvisoryScreen(),
          ),
          GoRoute(
            path: '/marketplace',
            name: RouteNames.marketplace,
            builder: (context, state) => const MarketplaceScreen(),
          ),
          GoRoute(
            path: '/farm-workspace',
            name: RouteNames.farmWorkspace,
            builder: (context, state) => const FarmWorkspaceScreen(),
          ),
          GoRoute(
            path: '/sustainability',
            name: RouteNames.sustainability,
            builder: (context, state) => const SustainabilityScreen(),
          ),
          GoRoute(
            path: '/profile',
            name: RouteNames.profile,
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/subscription',
        name: RouteNames.subscription,
        builder: (context, state) => const SubscriptionScreen(),
      ),
      GoRoute(
        path: '/settings',
        name: RouteNames.settings,
        builder: (context, state) => const SettingsScreen(),
      ),
    ],
  );
});

/// Authentication state provider
final authStateProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

// Placeholder screen implementations
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(child: CircularProgressIndicator()),
  );
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Login')),
  );
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Register')),
  );
}

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Select Role')),
  );
}

class FarmerOnboardingScreen extends StatelessWidget {
  const FarmerOnboardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Complete Profile')),
  );
}

class FarmerDashboardScreen extends StatelessWidget {
  const FarmerDashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Dashboard')),
  );
}

class DiagnosticsScreen extends StatelessWidget {
  const DiagnosticsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Diagnostics')),
  );
}

class AdvisoryScreen extends StatelessWidget {
  const AdvisoryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Advisory')),
  );
}

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Marketplace')),
  );
}

class FarmWorkspaceScreen extends StatelessWidget {
  const FarmWorkspaceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Farm Workspace')),
  );
}

class SustainabilityScreen extends StatelessWidget {
  const SustainabilityScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Sustainability')),
  );
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Profile')),
  );
}

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Subscription')),
  );
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Settings')),
  );
}

class MainNavigationShell extends StatelessWidget {
  final Widget child;
  final String location;

  const MainNavigationShell({
    required this.child,
    required this.location,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: child,
    bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.assessment), label: 'Diagnostics'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Advisory'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Market'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    ),
  );
}
