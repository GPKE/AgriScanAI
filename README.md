# AgriScanAI - AI-Powered Agriculture Platform

AgriScanAI is a production-ready cross-platform mobile application designed to empower African smallholder farmers with AI-powered digital agriculture and market access capabilities.

## 🌾 Features

### Core Modules
- **AI Crop Diagnostics**: Image-based crop disease and pest identification
- **AI Advisory Chat**: Localized agricultural recommendations and guidance
- **Digital Marketplace**: Connect with verified buyers and aggregators
- **Farm Management**: Track crops, planting, harvest, and expenses
- **Carbon & Sustainability**: Track environmental practices and carbon credits
- **Farmer Dashboard**: Comprehensive farm overview and recommendations
- **Subscription System**: Freemium SaaS model with premium features
- **Institutional Dashboard**: Analytics for NGOs and government agencies

## 🏗️ Project Structure

```
lib/
├── config/              # App configuration and constants
├── core/                # Core functionality (errors, exceptions, utils)
├── data/                # Data layer (models, repositories, datasources)
├── domain/              # Domain layer (entities, usecases)
├── presentation/        # UI layer (screens, widgets, providers)
├── services/            # Firebase and external services
├── utils/               # Utility functions and helpers
└── main.dart            # App entry point
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK >= 3.1.0
- Firebase project setup
- Android SDK for Android deployment

### Installation

1. Clone the repository
```bash
git clone https://github.com/GPKE/AgriScanAI.git
cd AgriScanAI
```

2. Install dependencies
```bash
flutter pub get
```

3. Configure Firebase
```bash
flutterfire configure
```

4. Generate code
```bash
flutter pub run build_runner build
```

5. Run the app
```bash
flutter run
```

## 📦 Tech Stack

### Frontend
- **Flutter**: Cross-platform UI framework
- **Material Design 3**: Modern UI components
- **Riverpod**: State management
- **Go Router**: Navigation

### Backend
- **Firebase Authentication**: User authentication
- **Cloud Firestore**: Real-time database
- **Firebase Storage**: File storage
- **Firebase Cloud Messaging**: Push notifications
- **Firebase Analytics**: User analytics

### AI Services
- **OpenAI API**: AI crop diagnostics and advisory

## 🔐 Security

- Firebase security rules for data protection
- Role-based access control (RBAC)
- Secure file uploads with validation
- Farmer data privacy protection
- Encrypted local storage

## 📱 Supported Platforms

- **Android**: Primary platform (API 21+)
- **iOS**: Architecture ready for future deployment

## 🌐 Localization

- English
- Swahili (structure ready)
- Easy expansion to additional African languages

## 💾 Database Schema

Key Firestore collections:
- `users`: User profiles and authentication data
- `farms`: Farm information and ownership
- `diagnostics`: AI scan results and history
- `advisory_chats`: Chat messages and advisory history
- `marketplace`: Buyer listings and produce offerings
- `sustainability_records`: Carbon tracking entries
- `subscriptions`: Subscription plans and user subscriptions
- `institutions`: NGO and government organizations
- `notifications`: Push notification records

## 📊 Subscription Tiers

### Free Plan
- 3 AI scans/month
- 3 advisory interactions/month
- Access to 3 verified buyers
- 3 sustainability tracking entries

### Premium Plan
- Unlimited AI scans
- Unlimited advisory interactions
- Unlimited buyer access
- Advanced analytics
- Verified farmer profile
- Yield forecasting
- Carbon reporting

## 🎯 MVP Priority

Phase 1 focuses on:
1. Authentication system
2. Farmer dashboard
3. AI crop diagnostics
4. Marketplace access
5. Advisory chat
6. Basic subscription system

## 📈 Analytics

Tracked metrics:
- User engagement
- Scan usage patterns
- Marketplace interactions
- Subscription conversion rates
- Farmer retention

## 🔌 Offline Support

- Cached farmer records
- Offline form entry
- Automatic sync when internet reconnects
- Low-bandwidth optimization for African environments

## 📚 Documentation

- [Architecture Guide](ARCHITECTURE.md) - System design and patterns
- [Development Guide](DEVELOPMENT.md) - Development workflow
- [Deployment Guide](DEPLOYMENT.md) - Deployment instructions
- [Features Guide](FEATURES.md) - Feature documentation

## 📄 License

MIT License - See LICENSE file

## 🤝 Contributing

Contributions are welcome! Please follow the project's code style and architecture patterns.

## 📞 Support

For issues and questions, please create a GitHub issue or contact the development team.
