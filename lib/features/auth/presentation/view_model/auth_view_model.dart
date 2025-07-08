import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_view_model.freezed.dart';
part 'auth_view_model.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoadingSignInWithPasword,
    @Default(false) bool isLoadingSignInWithGoogle,
    @Default(null) User? user,
  }) = _AuthState;
}

@riverpod
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository;

  @override
  Future<AuthState> build() async {
    _authRepository = ref.read(authRepositoryProvider);
    return AuthState(user: _authRepository.currentUser);
  }

  Future<void> logIn(String email, String password) async {
    state = AsyncValue.data(
      state.value!.copyWith(isLoadingSignInWithPasword: true),
    );

    final response = await AsyncValue.guard(
      () => _authRepository.signInWithEmailAndPassword(email, password),
    );

    state = AsyncValue.data(
      state.value!.copyWith(isLoadingSignInWithPasword: false),
    );

    if (response.hasError) {
      state = AsyncValue.error(response.error!, StackTrace.current);
    } else {
      state = AsyncValue.data(
        state.value!.copyWith(
          isLoadingSignInWithPasword: false,
          user: _authRepository.currentUser,
        ),
      );
    }
  }

  Future<void> logInWithGoogle() async {
    state = AsyncValue.data(
      state.value!.copyWith(isLoadingSignInWithGoogle: true),
    );

    final response = await AsyncValue.guard(
      () => _authRepository.signInWithGoogle(),
    );

    state = AsyncValue.data(
      state.value!.copyWith(isLoadingSignInWithGoogle: false),
    );

    if (response.error != null) {
      state = AsyncValue.error(response.error!, StackTrace.current);
    } else {
      state = AsyncValue.data(
        state.value!.copyWith(user: _authRepository.currentUser),
      );
    }
  }

  Future<void> logOut() async {
    try {
      await _authRepository.signOut();
      state = AsyncValue.data(
        state.value!.copyWith(
          user: null,
          isLoadingSignInWithPasword: false,
          isLoadingSignInWithGoogle: false,
        ),
      );
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
