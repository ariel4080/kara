// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorDto _$ErrorDtoFromJson(Map<String, dynamic> json) => _ErrorDto(
  code: json['code'] as String?,
  description: json['description'] as String?,
  attributes: json['attributes'] == null
      ? null
      : AttributeDto.fromJson(json['attributes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ErrorDtoToJson(_ErrorDto instance) => <String, dynamic>{
  'code': instance.code,
  'description': instance.description,
  'attributes': instance.attributes,
};

_AttributeDto _$AttributeDtoFromJson(Map<String, dynamic> json) =>
    _AttributeDto();

Map<String, dynamic> _$AttributeDtoToJson(_AttributeDto instance) =>
    <String, dynamic>{};
