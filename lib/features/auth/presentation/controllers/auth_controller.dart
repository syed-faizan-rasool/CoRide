import 'package:get/get.dart';
import '../../data/models/user_model.dart';
import '../../data/repositories/auth_repository.dart';
import '../../../../routes/app_routes.dart';

class AuthController extends GetxController {
  final AuthRepository _authRepository = AuthRepository();

  final isLoading = false.obs;
  final Rxn<UserModel> currentUser = Rxn<UserModel>();

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      isLoading.value = true;
      final user = await _authRepository.login(email: email, password: password);
      currentUser.value = user;
      Get.offAllNamed(AppRoutes.home);
    } catch (e) {
      Get.snackbar(
        'Login failed',
        e.toString().replaceFirst('Exception: ', ''),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signup({
    required String name,
    required String email,
    required String phone,
    required String password,
  }) async {
    try {
      isLoading.value = true;
      final user = await _authRepository.signup(
        name: name,
        email: email,
        phone: phone,
        password: password,
      );
      currentUser.value = user;
      Get.offAllNamed(AppRoutes.home);
    } catch (e) {
      Get.snackbar(
        'Signup failed',
        e.toString().replaceFirst('Exception: ', ''),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }

  void logout() {
    currentUser.value = null;
    Get.offAllNamed(AppRoutes.login);
  }
}
