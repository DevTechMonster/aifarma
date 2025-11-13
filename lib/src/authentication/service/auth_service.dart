/// Service layer: Handles external API calls for authentication
/// This is a mock implementation - replace with actual API calls
class AuthService {
  Future<String> login(String email, String password) async {
    // Mock login delay
    await Future.delayed(const Duration(seconds: 2));

    // Mock login logic - accept any non-empty email/password
    if (email.isNotEmpty && password.isNotEmpty) {
      return email; // Return user email/id
    } else {
      throw Exception('Invalid credentials');
    }
  }

  Future<String> signup(String email, String password) async {
    // Mock signup delay
    await Future.delayed(const Duration(seconds: 2));

    // Mock signup logic
    if (email.isNotEmpty && password.isNotEmpty) {
      return email; // Return user email/id
    } else {
      throw Exception('Invalid registration data');
    }
  }

  Future<void> logout() async {
    // Mock logout delay
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> resetPassword(String email) async {
    // Mock password reset delay
    await Future.delayed(const Duration(seconds: 2));

    if (email.isEmpty) {
      throw Exception('Invalid email');
    }
  }
}