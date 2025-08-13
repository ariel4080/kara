import 'package:flutter/material.dart';

class SettingsOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const SettingsOption({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap ?? () {},
      trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
    );
  }
}
