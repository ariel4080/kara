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
  service(Icons.miscellaneous_services);

  final IconData icon;

  const ServiceIcon(this.icon);
}
