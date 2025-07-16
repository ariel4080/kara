import 'package:flutter/material.dart';

class Errors {
  final String code;
  final String message;

  Errors({this.code = 'ERROR: ', this.message = 'An unknown error occurred'});

  static handleAuthError(Errors error, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 5),
        content: Text('${error.code}: ${error.message}'),
      ),
    );
  }
}
