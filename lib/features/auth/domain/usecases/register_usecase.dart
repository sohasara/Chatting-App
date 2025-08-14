import '../../data/repositories/auth_repository.dart';

class RegisterResult {
  final bool success;
  final String? errorMessage;

  RegisterResult({required this.success, this.errorMessage});
}

class RegisterUseCase {
  final AuthRepository repository;

  RegisterUseCase(this.repository);

  Future<RegisterResult> execute(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      return RegisterResult(
        success: false,
        errorMessage: "Please enter email and password",
      );
    }

    try {
      await repository.register(email, password);
      return RegisterResult(success: true);
    } catch (e) {
      return RegisterResult(
        success: false,
        errorMessage: "Registration failed: $e",
      );
    }
  }
}
