// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServiceCategoryModel _$ServiceCategoryModelFromJson(
  Map<String, dynamic> json,
) => _ServiceCategoryModel(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  duration: (json['duration'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  currency: json['currency'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$ServiceCategoryModelToJson(
  _ServiceCategoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'duration': instance.duration,
  'price': instance.price,
  'currency': instance.currency,
  'icon': instance.icon,
};
