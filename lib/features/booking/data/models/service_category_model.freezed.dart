// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceCategoryModel _$ServiceCategoryModelFromJson(Map<String, dynamic> json) {
  return _ServiceCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this ServiceCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCategoryModelCopyWith<ServiceCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCategoryModelCopyWith<$Res> {
  factory $ServiceCategoryModelCopyWith(ServiceCategoryModel value,
          $Res Function(ServiceCategoryModel) then) =
      _$ServiceCategoryModelCopyWithImpl<$Res, ServiceCategoryModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      int duration,
      double price,
      String currency,
      String icon});
}

/// @nodoc
class _$ServiceCategoryModelCopyWithImpl<$Res,
        $Val extends ServiceCategoryModel>
    implements $ServiceCategoryModelCopyWith<$Res> {
  _$ServiceCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? duration = null,
    Object? price = null,
    Object? currency = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceCategoryModelImplCopyWith<$Res>
    implements $ServiceCategoryModelCopyWith<$Res> {
  factory _$$ServiceCategoryModelImplCopyWith(_$ServiceCategoryModelImpl value,
          $Res Function(_$ServiceCategoryModelImpl) then) =
      __$$ServiceCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      int duration,
      double price,
      String currency,
      String icon});
}

/// @nodoc
class __$$ServiceCategoryModelImplCopyWithImpl<$Res>
    extends _$ServiceCategoryModelCopyWithImpl<$Res, _$ServiceCategoryModelImpl>
    implements _$$ServiceCategoryModelImplCopyWith<$Res> {
  __$$ServiceCategoryModelImplCopyWithImpl(_$ServiceCategoryModelImpl _value,
      $Res Function(_$ServiceCategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? duration = null,
    Object? price = null,
    Object? currency = null,
    Object? icon = null,
  }) {
    return _then(_$ServiceCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceCategoryModelImpl implements _ServiceCategoryModel {
  const _$ServiceCategoryModelImpl(
      {required this.id,
      required this.name,
      this.description,
      required this.duration,
      required this.price,
      required this.currency,
      required this.icon});

  factory _$ServiceCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceCategoryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final int duration;
  @override
  final double price;
  @override
  final String currency;
  @override
  final String icon;

  @override
  String toString() {
    return 'ServiceCategoryModel(id: $id, name: $name, description: $description, duration: $duration, price: $price, currency: $currency, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, duration, price, currency, icon);

  /// Create a copy of ServiceCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCategoryModelImplCopyWith<_$ServiceCategoryModelImpl>
      get copyWith =>
          __$$ServiceCategoryModelImplCopyWithImpl<_$ServiceCategoryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceCategoryModel implements ServiceCategoryModel {
  const factory _ServiceCategoryModel(
      {required final String id,
      required final String name,
      final String? description,
      required final int duration,
      required final double price,
      required final String currency,
      required final String icon}) = _$ServiceCategoryModelImpl;

  factory _ServiceCategoryModel.fromJson(Map<String, dynamic> json) =
      _$ServiceCategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  int get duration;
  @override
  double get price;
  @override
  String get currency;
  @override
  String get icon;

  /// Create a copy of ServiceCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceCategoryModelImplCopyWith<_$ServiceCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
