import 'package:flutter/material.dart';

class AnimatedNavIcon extends StatelessWidget {
  final IconData icon;
  final bool selected;

  const AnimatedNavIcon({
    super.key,
    required this.icon,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1.0, end: selected ? 1.50 : 1.0),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.bounceOut,
      builder: (context, value, child) {
        return Transform.scale(scale: value, child: Icon(icon));
      },
    );
  }
}
