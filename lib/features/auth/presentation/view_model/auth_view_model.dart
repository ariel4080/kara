
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repository/auth_repository.dart';

part 'auth_view_model.g.dart';

@Riverpod(keepAlive: true)
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository;

  @override
  Future<User?> build() async {
    _authRepository = AuthRepository(FirebaseAuth.instance);
    return _authRepository.currentUser;
  }

  Future<void> signIn(String email, String password) async {
    state = const AsyncValue.loading();

    final response = await AsyncValue.guard(
      () => _authRepository.signInWithEmailAndPassword(email, password),
    );

    state = response.hasError ? AsyncValue.error(response.error!, StackTrace.current) : AsyncValue.data(_authRepository.currentUser);
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();

    try {
      await _authRepository.signOut();
      state = const AsyncValue.data(null);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}