
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repository/auth_repository.dart';

final userAuthViewModel = AsyncNotifierProvider<UserAuthViewModel, User?>(() => UserAuthViewModel(AuthRepository(FirebaseAuth.instance)));

class UserAuthViewModel extends AsyncNotifier<User?> {
  final AuthRepository _authRepository;

  UserAuthViewModel(this._authRepository);

  @override
  Future<User?> build() async => _authRepository.currentUser;

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