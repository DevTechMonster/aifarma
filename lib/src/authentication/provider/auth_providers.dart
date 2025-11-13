import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/auth_state.dart';
import '../service/auth_service.dart';

part 'auth_providers.g.dart';

/// Provider for AuthService
@riverpod
AuthService authService(Ref ref) {
  return AuthService();
}

/// Main authentication controller
@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return const AuthState(
      isAuthenticated: false,
      user: null,
      isLoading: false,
    );
  }

  Future<void> login(String email, String password) async {
    state = state.copyWith(isLoading: true);

    try {
      final service = ref.read(authServiceProvider);
      final user = await service.login(email, password);

      state = state.copyWith(
        isAuthenticated: true,
        user: user,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true);

    try {
      final service = ref.read(authServiceProvider);
      await service.logout();

      state = const AuthState(
        isAuthenticated: false,
        user: null,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }

  Future<void> signup(String email, String password) async {
    state = state.copyWith(isLoading: true);

    try {
      final service = ref.read(authServiceProvider);
      final user = await service.signup(email, password);

      state = state.copyWith(
        isAuthenticated: true,
        user: user,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false);
      rethrow;
    }
  }
}