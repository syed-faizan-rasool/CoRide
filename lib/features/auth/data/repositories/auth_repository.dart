import '../models/user_model.dart';

/// Placeholder repository — replace the mock logic below with real API
/// calls (REST/Firebase) once your backend is ready.
class AuthRepository {
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    // TODO: Replace with real API call
    if (email.isEmpty || password.isEmpty) {
      throw Exception('Invalid credentials');
    }

    return UserModel(
      id: 'user_001',
      name: 'Test User',
      email: email,
      phone: '03001234567',
    );
  }

  Future<UserModel> signup({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    // TODO: Replace with real API call
    return UserModel(
      id: 'user_002',
      name: name,
      email: email,
      phone: phone,
    );
  }
}
