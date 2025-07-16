import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/utils/errors.dart';

part 'auth_datasource.g.dart';

@riverpod
AuthDataSource authDataSource(ref) {
  return AuthDataSource(FirebaseAuth.instance);
}

class AuthDataSource {
  final FirebaseAuth auth;

  AuthDataSource(this.auth);

  User? get currentUser => auth.currentUser;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw Errors(code: e.code, message: e.message.toString());
    }
  }

  Future<void> signUpWithEmailAndPassword(
    String name,
    String email,
    String password,
  ) async {
    try {
      final UserCredential userCredential = await auth
          .createUserWithEmailAndPassword(email: email, password: password);
      await userCredential.user!.updateProfile(displayName: name);
    } on FirebaseAuthException catch (e) {
      throw Errors(code: e.code, message: e.message.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await auth.signInWithCredential(credential);
    } on PlatformException catch (e) {
      throw Errors(
        code: 'GOOGLE_SIGN_IN_FAILED',
        message: e.message.toString(),
      );
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw Errors(code: e.code, message: e.message.toString());
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      throw Errors(message: e.toString());
    }
  }
}
