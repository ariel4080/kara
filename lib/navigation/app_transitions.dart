import 'package:flutter/material.dart';

enum AppTransitionScreen {
  splash(Offset(0.0, 0.0)),
  login(Offset(0.0, 0.1)),
  home(Offset(0.1, 0.0));

  const AppTransitionScreen(this.offset);

  final Offset offset;
}

class AppTransitions {

  final AppTransitionScreen screenType;

  AppTransitions(this.screenType);

  Widget fadeSlideTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child
  ) {
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: screenType.offset,
          end: Offset.zero,
        ).animate(animation),
        child: child,
      ),
    );
  }
}
