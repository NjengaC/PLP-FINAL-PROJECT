class AuthService {
  Future<bool> registerUser(String email, String password) async {
    print("Simulating user registration for: $email");
    await Future.delayed(Duration(seconds: 1)); // Simulate a short delay
    return true; // Always return true to simulate successful registration
  }

  Future<bool> logIn(String email, String password) async {
    print("Simulating user login for: $email");
    await Future.delayed(Duration(seconds: 1)); // Simulate a short delay
    return true; // Always return true to simulate successful login
  }
}

