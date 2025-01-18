import 'package:rentify_flat_management/features/auth/domain/entity/auth_entity.dart';

abstract interface class IAuthDataSource {
  Future<String> loginUser(String email, String password);

  Future<void> signupUser(AuthEntity user);

  Future<AuthEntity> getCurrentUser();

  // Future<String> uploadProfilePicture(File file);
}
