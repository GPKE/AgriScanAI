/// Application-wide constants and configuration values
/// 
/// This file contains all constants used throughout the application,
/// including API limits, timeouts, and feature flags.

class AppConstants {
  /// API and Network Configuration
  static const String apiBaseUrl = 'https://api.agriscanai.com';
  static const int networkTimeoutSeconds = 30;
  static const int maxRetries = 3;
  static const Duration retryDelay = Duration(seconds: 1);

  /// Feature Limits - Free Tier
  static const int freeScansPerMonth = 3;
  static const int freeAdvisoryInteractionsPerMonth = 3;
  static const int freeVerifiedBuyersAccess = 3;
  static const int freeSustainabilityEntries = 3;

  /// Feature Limits - Premium Tier
  static const int premiumScansPerMonth = 999999;
  static const int premiumAdvisoryInteractionsPerMonth = 999999;
  static const int premiumVerifiedBuyersAccess = 999999;
  static const int premiumSustainabilityEntries = 999999;

  /// Image Processing
  static const int maxImageSizeBytes = 10 * 1024 * 1024;
  static const List<String> supportedImageFormats = ['jpg', 'jpeg', 'png'];
  static const int imageCompressionQuality = 85;

  /// User Roles
  static const String roleFarmer = 'farmer';
  static const String roleCooperativeManager = 'cooperative_manager';
  static const String roleBuyer = 'buyer';
  static const String roleNGO = 'ngo';
  static const String roleAdmin = 'admin';

  /// Firestore Collection Names
  static const String usersCollection = 'users';
  static const String farmsCollection = 'farms';
  static const String diagnosticsCollection = 'diagnostics';
  static const String advisoryChatsCollection = 'advisory_chats';
  static const String marketplaceCollection = 'marketplace';
  static const String sustainabilityRecordsCollection = 'sustainability_records';
  static const String subscriptionsCollection = 'subscriptions';
  static const String institutionsCollection = 'institutions';
  static const String notificationsCollection = 'notifications';
  static const String buyersCollection = 'buyers';
  static const String produceListingsCollection = 'produce_listings';

  /// Subscription Plans
  static const String planFree = 'free';
  static const String planPremium = 'premium';
  static const String planCorporate = 'corporate';

  /// Crop Categories
  static const List<String> cropCategories = [
    'Maize',
    'Beans',
    'Potatoes',
    'Tomatoes',
    'Onions',
    'Cabbage',
    'Carrots',
    'Cucumbers',
    'Peppers',
    'Spinach',
  ];

  /// Disease Severity Levels
  static const String severityHealthy = 'healthy';
  static const String severityMild = 'mild';
  static const String severityModerate = 'moderate';
  static const String severitySevere = 'severe';
  static const String severityCritical = 'critical';

  /// Sustainability Practices
  static const List<String> sustainabilityPractices = [
    'Crop Rotation',
    'Composting',
    'Water Harvesting',
    'Tree Planting',
    'Reduced Tillage',
    'Mulching',
    'Agroforestry',
    'Drip Irrigation',
  ];

  /// Cache Duration
  static const Duration cacheDuration = Duration(days: 7);
  static const Duration shortCacheDuration = Duration(hours: 1);

  /// Pagination
  static const int pageSize = 20;
  static const int defaultPageNumber = 1;

  /// Debounce Duration
  static const Duration debounceDuration = Duration(milliseconds: 500);

  /// Premium Subscription Duration
  static const Duration monthlySubscriptionDuration = Duration(days: 30);
  static const Duration yearlySubscriptionDuration = Duration(days: 365);

  /// Error Messages
  static const String errorNetworkConnection = 'No internet connection';
  static const String errorUnauthorized = 'Unauthorized access';
  static const String errorServerError = 'Server error occurred';
  static const String errorInvalidInput = 'Invalid input provided';
  static const String errorFileUploadFailed = 'File upload failed';
}
