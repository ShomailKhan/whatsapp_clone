# 💬 WhatsApp Clone - Flutter

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

**A fully functional WhatsApp clone built with Flutter, featuring real-time messaging, Firebase authentication, and responsive design for mobile and web platforms.**

[Features](#-features) • [Screenshots](#-screenshots) • [Installation](#-installation) • [Tech Stack](#-tech-stack) • [Project Structure](#-project-structure) • [Contributing](#-contributing)

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Screenshots](#-screenshots)
- [Tech Stack](#-tech-stack)
- [Architecture](#-architecture)
- [Installation](#-installation)
- [Firebase Setup](#-firebase-setup)
- [Project Structure](#-project-structure)
- [Key Components](#-key-components)
- [Responsive Design](#-responsive-design)
- [Contributing](#-contributing)
- [License](#-license)
- [Contact](#-contact)

---

## 🌟 Overview

This WhatsApp Clone is a modern messaging application that replicates the core features of WhatsApp. Built with **Flutter** and powered by **Firebase**, it demonstrates best practices in mobile and web development, including responsive design, state management, and real-time data synchronization.

### Why This Project?

- **Cross-Platform:** Single codebase for Android, iOS, Web, Windows, macOS, and Linux
- **Real-Time:** Instant message delivery using Firebase
- **Responsive:** Adaptive UI that works seamlessly on mobile and desktop
- **Modern UI:** WhatsApp-inspired dark theme with custom colors
- **Scalable:** Clean architecture with modular components

---

## ✨ Features

### 🔐 Authentication
- **Firebase Authentication** with email/password
- Secure login and signup system
- Persistent user sessions
- Logout functionality with confirmation dialog

### 💬 Messaging
- Real-time chat interface
- Message bubbles (sender & receiver cards)
- Timestamp display with message status
- Read receipts (double check marks)
- Responsive message input field
- Emoji support
- File attachment options

### 👥 Contacts
- Contact list with profile pictures
- Recent messages preview
- Add new contacts functionality
- Search contacts feature
- Avatar display with network images

### 📱 Mobile Features
- Tab navigation (Chats, Status, Calls)
- Floating action button for quick actions
- Individual chat screens
- AppBar with actions (video call, voice call, more options)
- Back navigation between screens
- Material Design components

### 💻 Web Features
- Split-screen layout (contacts sidebar + chat area)
- Profile bar with user information
- Search bar for finding conversations
- Desktop-optimized UI
- Responsive chat area (75% width)
- Custom background image support

### 🎨 UI/UX
- **Dark theme** throughout the app
- Custom color scheme matching WhatsApp
- **Outfit font** for modern typography
- Smooth animations and transitions
- Consistent spacing and padding
- Material 3 design system
- Responsive constraints for different screen sizes

---

## 📸 Screenshots

### Mobile View

<div align="center">

| Login Screen | Chats | Individual Chat |
|:---:|:---:|:---:|
| ![Login Screen](screenshots/mobile_login.png) | ![Chats](screenshots/mobile_chats.png) | ![Chat](screenshots/mobile_chat.png) |

| Add Contact | Tabs Navigation | Logout Dialog |
|:---:|:---:|:---:|
| ![Add Contact](screenshots/mobile_add_contact.png) | ![Tabs](screenshots/mobile_tabs.png) | ![Logout](screenshots/mobile_logout.png) |

</div>

### Web View

<div align="center">

| Web Interface | Chat Window |
|:---:|:---:|
| ![Web Interface](screenshots/web_interface.png) | ![Web Chat](screenshots/web_chat.png) |

</div>

### UI Components

<div align="center">

| Sender Message | Receiver Message | Contact List |
|:---:|:---:|:---:|
| ![Sender](screenshots/sender_card.png) | ![Receiver](screenshots/receiver_card.png) | ![Contacts](screenshots/contact_list.png) |

</div>

---

## 🛠️ Tech Stack

### Frontend
- **Flutter 3.9.2** - UI Framework
- **Dart** - Programming Language
- **Material 3** - Design System

### Backend & Services
- **Firebase Core** - Backend infrastructure
- **Firebase Authentication** - User authentication
- **Cloud Firestore** - Real-time database

### State Management
- **StreamBuilder** - Real-time data updates
- **StatelessWidget** - UI components

### Assets & Fonts
- **Custom Outfit Font** - Typography
- **Network Images** - Profile pictures
- **Custom Background** - Chat interface

---

## 🏗️ Architecture

This project follows a **clean architecture** approach with clear separation of concerns:

```
whatsapp_clone/
│
├── lib/
│   ├── main.dart                    # App entry point
│   │
│   ├── screens/                     # Main screen layouts
│   │   ├── login_screen.dart        # User login
│   │   ├── signup_screen.dart       # User registration
│   │   ├── mobilescreen.dart        # Mobile layout
│   │   ├── webscreen.dart           # Web layout
│   │   └── signout_screen.dart      # Logout handling
│   │
│   ├── helper_widgets/              # Reusable components
│   │   ├── layouts.dart             # Responsive layout manager
│   │   ├── contactlist.dart         # Contact list view
│   │   ├── chatlist.dart            # Chat messages list
│   │   ├── sendercard.dart          # Sent message bubble
│   │   ├── recievercard.dart        # Received message bubble
│   │   ├── mobile_chat_screen.dart  # Individual chat screen
│   │   ├── add_new_contact.dart     # Add contact dialog
│   │   ├── userinfo.dart            # User information widget
│   │   ├── web_profile_bar.dart     # Web profile header
│   │   ├── web_searchbar.dart       # Web search component
│   │   └── web_chat_appbar.dart     # Web chat header
│   │
│   └── utils/                       # Utilities & constants
│       ├── colors.dart              # Color theme definitions
│       └── info.dart                # Sample data
│
├── assets/
│   ├── images/                      # Image assets
│   │   └── backgroundImage.png
│   └── fonts/                       # Custom fonts
│       └── Outfit-Regular.ttf
│
└── firebase_options.dart            # Firebase configuration
```

### Design Pattern
- **Widget-based Architecture** - Modular, reusable components
- **Separation of Concerns** - Screens, widgets, and utilities are separated
- **Responsive Design** - Adaptive layouts for mobile and web

---

## 📦 Installation

### Prerequisites

Before you begin, ensure you have installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.9.2 or higher)
- [Dart SDK](https://dart.dev/get-dart) (comes with Flutter)
- [Android Studio](https://developer.android.com/studio) / [VS Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/downloads)
- A Firebase account (free)

### Step 1: Clone the Repository

```bash
git clone https://github.com/ShomailKhan/whatsapp_clone.git
cd whatsapp_clone
```

### Step 2: Install Dependencies

```bash
flutter pub get
```

### Step 3: Configure Firebase

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Create a new project
3. Enable **Authentication** (Email/Password)
4. Enable **Cloud Firestore**
5. Add your apps (Android/iOS/Web)
6. Download configuration files:
   - Android: `google-services.json` → `android/app/`
   - iOS: `GoogleService-Info.plist` → `ios/Runner/`
   - Web: Update `firebase_options.dart`

### Step 4: Run the App

#### For Mobile (Android/iOS)
```bash
flutter run
```

#### For Web
```bash
flutter run -d chrome
```

#### For Windows
```bash
flutter run -d windows
```

#### For macOS
```bash
flutter run -d macos
```

#### For Linux
```bash
flutter run -d linux
```

---

## 🔥 Firebase Setup

### Detailed Firebase Configuration

1. **Create a Firebase Project**
   ```
   - Go to https://console.firebase.google.com/
   - Click "Add project"
   - Enter project name: "WhatsApp Clone"
   - Accept terms and create
   ```

2. **Enable Authentication**
   ```
   - In Firebase Console, go to "Authentication"
   - Click "Get Started"
   - Enable "Email/Password" sign-in method
   ```

3. **Set Up Cloud Firestore**
   ```
   - Go to "Firestore Database"
   - Click "Create database"
   - Choose production mode
   - Select your preferred location
   ```

4. **Add Firebase to Your App**
   
   **For Android:**
   ```bash
   # Download google-services.json
   # Place in: android/app/google-services.json
   ```

   **For iOS:**
   ```bash
   # Download GoogleService-Info.plist
   # Place in: ios/Runner/GoogleService-Info.plist
   ```

   **For Web:**
   ```bash
   # FlutterFire CLI (recommended)
   dart pub global activate flutterfire_cli
   flutterfire configure
   ```

5. **Update Firebase Options**
   - Run `flutterfire configure` to auto-generate `firebase_options.dart`
   - Or manually update the file with your Firebase config

---

## 📂 Project Structure

### Key Directories

```
whatsapp_clone/
│
├── android/              # Android native code
├── ios/                  # iOS native code
├── web/                  # Web-specific files
├── windows/              # Windows native code
├── macos/                # macOS native code
├── linux/                # Linux native code
│
├── lib/                  # Main application code
│   ├── main.dart         # Entry point
│   ├── screens/          # Screen layouts
│   ├── helper_widgets/   # Reusable widgets
│   └── utils/            # Constants & utilities
│
├── assets/               # Static assets
│   ├── images/           # Image files
│   └── fonts/            # Font files
│
├── test/                 # Unit & widget tests
│
├── pubspec.yaml          # Dependencies
├── analysis_options.yaml # Lint rules
└── README.md             # This file
```

---

## 🔑 Key Components

### 1. Main App (`main.dart`)

```dart
// Entry point with Firebase initialization
// StreamBuilder for auth state management
// Responsive layout switching (Mobile/Web)
```

**Key Features:**
- Firebase initialization on app startup
- Authentication state listener
- Theme configuration
- Material 3 design

### 2. Responsive Layout (`layouts.dart`)

```dart
// Detects screen size and switches layouts
// Mobile: < 900px width
// Web: >= 900px width
```

### 3. Authentication Screens

- **Login Screen:** Email/password authentication
- **Signup Screen:** New user registration
- **Logout Dialog:** Confirmation before sign out

### 4. Message Components

#### Sender Card
```dart
// Right-aligned message bubble
// Timestamp + read receipts
// Custom styling for sent messages
```

#### Receiver Card
```dart
// Left-aligned message bubble
// Profile picture + timestamp
// Custom styling for received messages
```

### 5. Contact System

- **Contact List:** Scrollable list of contacts
- **Add Contact:** Dialog for adding new contacts
- **Navigation:** Tap to open individual chat

---

## 📱 Responsive Design

### Mobile Layout (`mobilescreen.dart`)

**Features:**
- AppBar with logo and actions
- Tab navigation (Chats, Status, Calls)
- Floating action button
- Contact list view
- Individual chat screens
- Bottom navigation

**Screen Sizes:** < 900px width

### Web Layout (`webscreen.dart`)

**Features:**
- Split screen (25% sidebar + 75% chat)
- Profile bar at top
- Search bar for contacts
- Chat area with background image
- Message input at bottom
- Desktop-optimized spacing

**Screen Sizes:** ≥ 900px width

### Breakpoint Logic

```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth < 900) {
      return MobileScreen();
    }
    return WebScreen();
  },
)
```

---

## 🎨 Color Scheme

The app uses a custom dark theme inspired by WhatsApp:

| Color | Hex Code | Usage |
|-------|----------|-------|
| Background | `#131C21` | Main background |
| App Bar | `#1F2C34` | AppBar background |
| Tab Color | `#00A783` | Active tab, buttons |
| Message Color | `#056062` | Received messages |
| Sender Message | `#252D31` | Sent messages |
| Text Color | `#F1F1F2` | Primary text |
| Search Bar | `#323739` | Search background |
| Divider | `#252D32` | List dividers |

---

## 🚀 Features Breakdown

### ✅ Implemented Features

- [x] Firebase Authentication (Email/Password)
- [x] Responsive mobile layout
- [x] Responsive web layout
- [x] Contact list view
- [x] Individual chat screens
- [x] Message bubbles (sender/receiver)
- [x] Timestamps and read receipts
- [x] Add new contacts
- [x] Tab navigation
- [x] Logout functionality
- [x] Custom theme and fonts
- [x] Network image loading
- [x] AppBar with actions
- [x] Floating action button

### 🔮 Future Enhancements

- [ ] Real-time message sending/receiving
- [ ] Image/video sharing
- [ ] Voice messages
- [ ] Video calls
- [ ] Voice calls
- [ ] Status/Stories feature
- [ ] Group chats
- [ ] Message notifications
- [ ] Online/offline status
- [ ] Last seen timestamp
- [ ] Message search
- [ ] Dark/light theme toggle
- [ ] Profile customization
- [ ] Settings page
- [ ] End-to-end encryption

---

## 🧪 Testing

### Run Tests

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test file
flutter test test/widget_test.dart
```

### Test Types

- **Unit Tests:** Logic and utility functions
- **Widget Tests:** UI components
- **Integration Tests:** End-to-end flows

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

### How to Contribute

1. **Fork the repository**
   ```bash
   # Click the 'Fork' button at the top right
   ```

2. **Clone your fork**
   ```bash
   git clone https://github.com/YOUR_USERNAME/whatsapp_clone.git
   cd whatsapp_clone
   ```

3. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```

4. **Make your changes**
   ```bash
   # Write your code
   # Add tests if applicable
   ```

5. **Commit your changes**
   ```bash
   git add .
   git commit -m "Add amazing feature"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/amazing-feature
   ```

7. **Open a Pull Request**
   ```
   - Go to the original repository
   - Click "New Pull Request"
   - Select your branch
   - Describe your changes
   ```

### Contribution Guidelines

- Follow Flutter/Dart style guidelines
- Write meaningful commit messages
- Add comments for complex logic
- Test your changes thoroughly
- Update documentation if needed

---

## 📄 License

This project is licensed under the **MIT License**.

```
MIT License

Copyright (c) 2025 Shomail Khan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```

---

## 👨‍💻 Contact

**Shomail Khan**

- GitHub: [@ShomailKhan](https://github.com/ShomailKhan)
- Project Link: [https://github.com/ShomailKhan/whatsapp_clone](https://github.com/ShomailKhan/whatsapp_clone)

---

## 🙏 Acknowledgments

- [Flutter Team](https://flutter.dev/) for the amazing framework
- [Firebase](https://firebase.google.com/) for backend services
- [WhatsApp](https://www.whatsapp.com/) for design inspiration
- [Material Design](https://material.io/) for UI guidelines

---

## 📊 Project Stats

![GitHub repo size](https://img.shields.io/github/repo-size/ShomailKhan/whatsapp_clone?style=flat-square)
![GitHub stars](https://img.shields.io/github/stars/ShomailKhan/whatsapp_clone?style=flat-square)
![GitHub forks](https://img.shields.io/github/forks/ShomailKhan/whatsapp_clone?style=flat-square)
![GitHub issues](https://img.shields.io/github/issues/ShomailKhan/whatsapp_clone?style=flat-square)
![GitHub pull requests](https://img.shields.io/github/issues-pr/ShomailKhan/whatsapp_clone?style=flat-square)

---

<div align="center">

### ⭐ Star this repository if you found it helpful!

**Made with ❤️ and Flutter**

[Back to Top](#-whatsapp-clone---flutter)

</div>
