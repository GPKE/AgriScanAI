import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'firebase_options.dart';
import 'config/app_theme.dart';
import 'config/routes/app_routes.dart';
import 'config/localization/locale_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  // Initialize localization
  await EasyLocalization.ensureInitialized();
  
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('sw')],
      path: 'assets/locales',
      fallbackLocale: const Locale('en'),
      child: const ProviderScope(
        child: AgriScanAIApp(),
      ),
    ),
  );
}

/// Main application widget for AgriScanAI
/// 
/// This is the root widget that sets up:
/// - Theme configuration (light/dark mode)
/// - Navigation routing
/// - Screen size adaptation
/// - Global app configuration
class AgriScanAIApp extends ConsumerWidget {
  const AgriScanAIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch theme mode from provider
    final themeMode = ref.watch(themeModeProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          title: 'AgriScanAI',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          routerConfig: ref.watch(goRouterProvider),
        );
      },
    );
  }
}
