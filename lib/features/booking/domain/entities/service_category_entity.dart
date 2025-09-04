import 'package:flutter/material.dart';

class ServiceCategoryEntity {
  final String name;
  final String description;
  final String time;
  final String price;
  final String currency;
  final IconData icon;

  ServiceCategoryEntity({
    required this.name,
    required this.description,
    required this.time,
    required this.price,
    required this.currency,
    required this.icon,
  });

  @override
  String toString() {
    return 'ServiceCategoryEntity(name: $name, time: $time, price: $price, currency: $currency)';
  }
}
