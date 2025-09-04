// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppointmentsEntity {
  String id;
  String userId;
  String businessId;
  String date;
  String time;
  int durationMinutes;
  String status;
  DateTime createdAt;
  ServiceEntity service;
  String notes;

  AppointmentsEntity({
    required this.id,
    required this.userId,
    required this.businessId,
    required this.date,
    required this.time,
    required this.durationMinutes,
    required this.status,
    required this.createdAt,
    required this.service,
    required this.notes,
  });
}

class ServiceEntity {
  String id;
  String name;
  double price;
  String currency;
  IconData icon;

  ServiceEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.currency,
    required this.icon,
  });
}

enum ServiceIcon {
  haircut(Icons.cut),
  face(Icons.face),
  palette(Icons.palette),
  straighten(Icons.straighten),
  dry_cleaning(Icons.dry_cleaning),
  content_cut(Icons.content_cut),
  service(Icons.miscellaneous_services),
  format_color_fill(Icons.format_color_fill),
  brush(Icons.brush),
  spa(Icons.spa),
  fitness_center(Icons.fitness_center),
  manicure(Icons.handyman),
  pedicure(Icons.pedal_bike),
  massage(Icons.self_improvement),
  yoga(Icons.accessibility_new),
  barber_shop(Icons.person),
  nail_salon(Icons.star),
  beauty_salon(Icons.face_retouching_natural),
  hair_icons(Icons.auto_fix_high),
  wellness(Icons.health_and_safety),
  therapy(Icons.psychology),
  consultation(Icons.chat),
  body(Icons.accessibility),
  auto_awesome(Icons.auto_awesome),
  cleaning_services(Icons.cleaning_services),
  handshake(Icons.handshake),
  self_improvement(Icons.self_improvement);

  final IconData icon;

  const ServiceIcon(this.icon);
}
