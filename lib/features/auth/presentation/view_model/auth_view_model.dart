import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repository/auth_repository.dart';

part 'auth_view_model.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository;

  @override
  Future<User?> build() async {
    _authRepository = ref.read(authRepositoryProvider);
    return _authRepository.currentUser;
  }

  Future<void> logIn(String email, String password) async {
    state = const AsyncValue.loading();

    final response = await AsyncValue.guard(
      () => _authRepository.signInWithEmailAndPassword(email, password),
    );

    if (response.hasError) {
      state = AsyncValue.error(response.error!, StackTrace.current);
    } else {
      state = AsyncValue.data(_authRepository.currentUser);
    }
  }

  Future<void> logOut() async {
    state = const AsyncValue.loading();

    try {
      await _authRepository.signOut();
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
