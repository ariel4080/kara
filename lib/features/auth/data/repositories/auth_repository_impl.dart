import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_datasource.dart';

part 'auth_repository_impl.g.dart';

@riverpod
AuthRepository authRepository(ref) {
  final dataSource = ref.watch(authDataSourceProvider);
  return AuthRepositoryImpl(dataSource);
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource datasource;

  AuthRepositoryImpl(this.datasource);

  @override
  User? get currentUser => datasource.currentUser;

  @override
  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async => datasource.signInWithEmailAndPassword(email, password);

  @override
  Future<void> signInWithGoogle() async => datasource.signInWithGoogle();

  @override
  Future<void> signOut() async => datasource.signOut();
}
