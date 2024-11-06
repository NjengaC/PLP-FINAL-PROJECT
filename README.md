# Lunch Order App

A Flutter-based application where users can register, log in, and order lunch. This project demonstrates a simple authentication flow using local storage (SQLite) without relying on third-party services.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Screens](#screens)
- [How It Works](#how-it-works)
- [Future Improvements](#future-improvements)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

---

## Features

- **User Registration**: Allows users to register with an email and password.
- **User Login**: Users can log in to access the ordering screen.
- **Simulated Order Page**: After logging in, users navigate to an order page.
- **Success Notifications**: Displays success or failure messages for registration and login.
- **Cross-Platform**: Compatible with mobile and desktop platforms.

## Getting Started

### Prerequisites

- **Flutter**: Make sure Flutter SDK is installed. Run `flutter --version` to confirm.
- **Device or Emulator**: Use a physical device or emulator for mobile, or run on a desktop platform.

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/lunch_order_app.git
   cd lunch_order_app
2. **Install Dependencies**:

```bash
  flutter pub get
```

3. **Run the App**:

To run on a mobile device or emulator:
```bash
flutter run
```
To run on Linux desktop:
```bash
flutter run -d linux
```
## Usage
Register: Enter an email and password on the registration page. A success message confirms registration.
Log In: Log in with the registered credentials (or any credentials for testing). A successful login navigates to the order page.
Project Structure
lib
├── main.dart               # Entry point of the app
├── pages                   # App screens
│   ├── login_page.dart     # Login screen
│   ├── registration_page.dart # Registration screen
│   └── order_page.dart     # Order screen after login
└── services                # Application logic
    ├── auth_service.dart   # Manages registration and login
    └── database_helper.dart # Manages database connections

# Screens
Login Page
Users enter their email and password to log in. Successful login leads to the order page.

# Registration Page
Allows users to register by entering an email and password. Displays a success message upon completion.

# Order Page
The main screen users see after logging in, representing the order page.

## How It Works
- AuthService: Manages user registration and login. For this simulation, database checks are bypassed.
- DatabaseHelper: Contains SQLite database operations. For demonstration purposes, these operations are simulated.
Future Improvements
- Persist Data: Implement SQLite storage to save user data persistently.
- UI Enhancements: Improve design with themes, animations, and user-friendly layouts.
- Additional Features: options for categories, lunch order customizations, and order history.
## Troubleshooting
sqflite Issues: Ensure the app runs on mobile or desktop (sqflite is not web-compatible).
Desktop Compatibility: Enable Flutter desktop support. See the Flutter Desktop Documentation.
Contributing
Contributions are welcome! Fork this repository and submit a pull request with improvements or bug fixes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.




