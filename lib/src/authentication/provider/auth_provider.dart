import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_provider.freezed.dart';
part 'auth_provider.g.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required bool isAuthenticated,
    String? user,
    @Default(false) bool isLoading,
  }) = _AuthState;
}

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

    // Mock login delay
    await Future.delayed(const Duration(seconds: 2));

    // Mock login logic - accept any non-empty email/password
    if (email.isNotEmpty && password.isNotEmpty) {
      state = state.copyWith(
        isAuthenticated: true,
        user: email,
        isLoading: false,
      );
    } else {
      state = state.copyWith(isLoading: false);
      throw Exception('Invalid credentials');
    }
  }

  Future<void> logout() async {
    state = state.copyWith(isLoading: true);

    // Mock logout delay
    await Future.delayed(const Duration(seconds: 1));

    state = const AuthState(
      isAuthenticated: false,
      user: null,
      isLoading: false,
    );
  }

  Future<void> signup(String email, String password) async {
    state = state.copyWith(isLoading: true);

    // Mock signup delay
    await Future.delayed(const Duration(seconds: 2));

    // Mock signup logic
    if (email.isNotEmpty && password.isNotEmpty) {
      state = state.copyWith(
        isAuthenticated: true,
        user: email,
        isLoading: false,
      );
    } else {
      state = state.copyWith(isLoading: false);
      throw Exception('Invalid registration data');
    }
  }
}