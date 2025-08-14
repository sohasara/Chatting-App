import '../../data/repositories/auth_repository.dart';

class LoginResult {
  final bool success;
  final String? errorMessage;

  LoginResult({required this.success, this.errorMessage});
}

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<LoginResult> execute(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      return LoginResult(
        success: false,
        errorMessage: "Please enter email and password",
      );
    }

    try {
      await repository.login(email, password);
      return LoginResult(success: true);
    } catch (e) {
      return LoginResult(success: false, errorMessage: "Login failed: $e");
    }
  }
}
