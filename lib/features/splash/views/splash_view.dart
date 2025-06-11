import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      // Navigate to the next screen after the delay
      if(context.mounted) {
        context.go('/login'); 
      }
    });
  }

  @override
  Widget build(content){
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 66, 2, 150),
      body: Center(
        child: Text(
          'Kara',
          style: TextStyle(
            fontSize: 55,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    );
  }
}