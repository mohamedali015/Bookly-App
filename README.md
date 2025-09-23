# 📚 Bookly - Flutter Book Discovery App

<div align="center">
  <img src="assets/readme_data/LogoEdited.png" alt="Bookly Logo" width="200"/>
</div>

## 🔍 Overview

Bookly is a modern Flutter application that helps users discover, explore, and learn about books.
The app provides a seamless experience for browsing featured books, searching for specific titles,
and viewing detailed information about each book using the Google Books API.

## ✨ Features

- 🎨 **Modern UI/UX**: Clean and intuitive interface with custom typography
- 📖 **Book Discovery**: Browse featured and newest books
- 🔍 **Smart Search**: Find books by title, author, or keywords
- 📋 **Detailed Information**: View comprehensive book details
- 🌐 **External Links**: Direct links to book previews
- 📱 **Responsive Design**: Optimized for different screen sizes
- ⚡ **Performance**: Efficient caching and smooth animations
- 🎯 **State Management**: Robust state management using BLoC pattern

## 🏗️ Architecture

This project follows **Clean Architecture** principles with a feature-based folder structure:

```
lib/
├── core/
│   ├── helper/           # Helper utilities
│   ├── network/          # Network configurations
│   ├── shared_widgets/   # Reusable UI components
│   └── utils/            # App utilities and themes
└── features/
    ├── splash/           # Splash screen feature
    ├── home/             # Home screen with featured books
    ├── search/           # Search functionality
    └── book_details/     # Book details view
```

### Architecture Patterns Used:

- **BLoC (Business Logic Component)** for state management
- **Repository Pattern** for data abstraction
- **Clean Architecture** for separation of concerns
- **MVVM (Model-View-ViewModel)** architecture

## 🛠️ Technologies & Packages

### Core Dependencies:

- **flutter_bloc**: State management
- **dio**: HTTP client for API requests
- **dartz**: Functional programming utilities
- **equatable**: Value equality comparison

### UI & UX:

- **google_fonts**: Custom typography
- **flutter_screenutil**: Responsive design
- **cached_network_image**: Efficient image loading
- **flutter_native_splash**: Custom splash screen

### Utilities:

- **url_launcher**: Opening external links
- **cupertino_icons**: iOS-style icons

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.27.3)
- Dart SDK (3.6.1)
- Java version (21.0.6)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/mohamedali015/bookly.git
   cd bookly
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build for Production

**Android APK:**

```bash
flutter build apk --release
```

**iOS (macOS required):**

```bash
flutter build ios --release
```

**Web:**

```bash
flutter build web --release
```

## 📸 Screenshots

<p align="center">
  <img src="assets/readme_data/splashScreen.jpg" width="250"/>
  <img src="assets/readme_data/homeScreen.jpg" width="250"/>
  <img src="assets/readme_data/searchScreen.jpg" width="250"/>
  <img src="assets/readme_data/bookDetailsScreen.jpg" width="250"/>
</p>

## App Preview Video

[▶️ Watch App Preview](assets/readme_data/appPreview.mp4)

## 🔧 Configuration

### API Integration

This app uses the Google Books API. No API key is required for basic usage, but rate limits may
apply.

### Custom Fonts

The app uses GT Sectra Fine Regular font located in `assets/fonts/`

### Native Splash Screen

Splash screen configuration is managed through `flutter_native_splash.yaml`

## 📂 Project Structure

```
bookly/
├── android/              # Android platform files
├── ios/                  # iOS platform files
├── lib/                  # Main application code
│   ├── core/             # Core functionality
│   ├── features/         # Feature modules
│   └── main.dart         # App entry point
├── assets/               # App assets
│   ├── fonts/            # Custom fonts
│   └── images/           # Images and icons
├── test/                 # Unit and widget tests
└── pubspec.yaml          # Dependencies and metadata
```

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Code Style

- Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful variable and function names
- Add comments for complex logic
- Ensure all tests pass before submitting PR

## 🐛 Bug Reports

If you find a bug, please create an issue with:

- Bug description
- Steps to reproduce
- Expected vs actual behavior
- Screenshots (if applicable)
- Device/platform information

## 📈 Performance

The app is optimized for performance with:

- Image caching for faster loading
- Efficient state management
- Lazy loading of book lists
- Responsive design for various screen sizes

## 👨‍💻 Author

**Mohamed Ali**

- GitHub: [@mohamedali015](https://github.com/mohamedali015)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/mohamed-ali-3268392a3)
- Email: mohamedali01537@gmail.com

## 🙏 Acknowledgments

- [Google Books API](https://developers.google.com/books) for book data
- [Flutter Team](https://flutter.dev) for the amazing framework
- [BLoC Library](https://bloclibrary.dev) for state management
- All open source contributors who made this project possible

---

<div align="center">
  Made with ❤️ using Flutter

⭐ Star this repository if you found it helpful!
</div>
