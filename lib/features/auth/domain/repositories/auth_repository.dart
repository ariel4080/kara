import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  User? get currentUser;

  Future<void> signInWithEmailAndPassword(String email, String password);

  Future<void> signUpWithEmailAndPassword(
    String name,
    String email,
    String password,
  );

  Future<void> signInWithGoogle();

  Future<void> resetPassword(String email);

  Future<void> signOut();
}
