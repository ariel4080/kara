// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorDtoImpl _$$ErrorDtoImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDtoImpl(
      code: json['code'] as String?,
      description: json['description'] as String?,
      attributes: json['attributes'] == null
          ? null
          : AttributeDto.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ErrorDtoImplToJson(_$ErrorDtoImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'attributes': instance.attributes,
    };

_$AttributeDtoImpl _$$AttributeDtoImplFromJson(Map<String, dynamic> json) =>
    _$AttributeDtoImpl();

Map<String, dynamic> _$$AttributeDtoImplToJson(_$AttributeDtoImpl instance) =>
    <String, dynamic>{};
