// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ErrorDto {

 String? get code; String? get description; AttributeDto? get attributes;
/// Create a copy of ErrorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorDtoCopyWith<ErrorDto> get copyWith => _$ErrorDtoCopyWithImpl<ErrorDto>(this as ErrorDto, _$identity);

  /// Serializes this ErrorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorDto&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,description,attributes);

@override
String toString() {
  return 'ErrorDto(code: $code, description: $description, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $ErrorDtoCopyWith<$Res>  {
  factory $ErrorDtoCopyWith(ErrorDto value, $Res Function(ErrorDto) _then) = _$ErrorDtoCopyWithImpl;
@useResult
$Res call({
 String? code, String? description, AttributeDto? attributes
});


$AttributeDtoCopyWith<$Res>? get attributes;

}
/// @nodoc
class _$ErrorDtoCopyWithImpl<$Res>
    implements $ErrorDtoCopyWith<$Res> {
  _$ErrorDtoCopyWithImpl(this._self, this._then);

  final ErrorDto _self;
  final $Res Function(ErrorDto) _then;

/// Create a copy of ErrorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? description = freezed,Object? attributes = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as AttributeDto?,
  ));
}
/// Create a copy of ErrorDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttributeDtoCopyWith<$Res>? get attributes {
    if (_self.attributes == null) {
    return null;
  }

  return $AttributeDtoCopyWith<$Res>(_self.attributes!, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// Adds pattern-matching-related methods to [ErrorDto].
extension ErrorDtoPatterns on ErrorDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ErrorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ErrorDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ErrorDto value)  $default,){
final _that = this;
switch (_that) {
case _ErrorDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ErrorDto value)?  $default,){
final _that = this;
switch (_that) {
case _ErrorDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? code,  String? description,  AttributeDto? attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ErrorDto() when $default != null:
return $default(_that.code,_that.description,_that.attributes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? code,  String? description,  AttributeDto? attributes)  $default,) {final _that = this;
switch (_that) {
case _ErrorDto():
return $default(_that.code,_that.description,_that.attributes);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? code,  String? description,  AttributeDto? attributes)?  $default,) {final _that = this;
switch (_that) {
case _ErrorDto() when $default != null:
return $default(_that.code,_that.description,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ErrorDto implements ErrorDto {
  const _ErrorDto({this.code, this.description, this.attributes});
  factory _ErrorDto.fromJson(Map<String, dynamic> json) => _$ErrorDtoFromJson(json);

@override final  String? code;
@override final  String? description;
@override final  AttributeDto? attributes;

/// Create a copy of ErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorDtoCopyWith<_ErrorDto> get copyWith => __$ErrorDtoCopyWithImpl<_ErrorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ErrorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorDto&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,description,attributes);

@override
String toString() {
  return 'ErrorDto(code: $code, description: $description, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$ErrorDtoCopyWith<$Res> implements $ErrorDtoCopyWith<$Res> {
  factory _$ErrorDtoCopyWith(_ErrorDto value, $Res Function(_ErrorDto) _then) = __$ErrorDtoCopyWithImpl;
@override @useResult
$Res call({
 String? code, String? description, AttributeDto? attributes
});


@override $AttributeDtoCopyWith<$Res>? get attributes;

}
/// @nodoc
class __$ErrorDtoCopyWithImpl<$Res>
    implements _$ErrorDtoCopyWith<$Res> {
  __$ErrorDtoCopyWithImpl(this._self, this._then);

  final _ErrorDto _self;
  final $Res Function(_ErrorDto) _then;

/// Create a copy of ErrorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? description = freezed,Object? attributes = freezed,}) {
  return _then(_ErrorDto(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as AttributeDto?,
  ));
}

/// Create a copy of ErrorDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttributeDtoCopyWith<$Res>? get attributes {
    if (_self.attributes == null) {
    return null;
  }

  return $AttributeDtoCopyWith<$Res>(_self.attributes!, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$AttributeDto {



  /// Serializes this AttributeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttributeDto);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttributeDto()';
}


}

/// @nodoc
class $AttributeDtoCopyWith<$Res>  {
$AttributeDtoCopyWith(AttributeDto _, $Res Function(AttributeDto) __);
}


/// Adds pattern-matching-related methods to [AttributeDto].
extension AttributeDtoPatterns on AttributeDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttributeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttributeDto value)  $default,){
final _that = this;
switch (_that) {
case _AttributeDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttributeDto value)?  $default,){
final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _AttributeDto():
return $default();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttributeDto implements AttributeDto {
  const _AttributeDto();
  factory _AttributeDto.fromJson(Map<String, dynamic> json) => _$AttributeDtoFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$AttributeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttributeDto);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AttributeDto()';
}


}




// dart format on
