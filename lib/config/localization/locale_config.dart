import 'package:flutter/material.dart';

/// Localization configuration for AgriScanAI
class LocaleConfig {
  static const Locale enLocale = Locale('en');
  static const Locale swLocale = Locale('sw');

  static const List<Locale> supportedLocales = [enLocale, swLocale];

  /// Get locale display name
  static String getLocaleName(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'English';
      case 'sw':
        return 'Kiswahili';
      default:
        return 'English';
    }
  }

  /// Get locale flag emoji
  static String getLocaleFlag(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return '🇬🇧';
      case 'sw':
        return '🇹🇿';
      default:
        return '🌍';
    }
  }
}
