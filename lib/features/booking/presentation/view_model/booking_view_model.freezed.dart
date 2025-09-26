// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingState {
  List<ServiceCategoryEntity> get categories =>
      throw _privateConstructorUsedError;
  List<ServiceCategoryEntity> get categoriesSelected =>
      throw _privateConstructorUsedError;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call(
      {List<ServiceCategoryEntity> categories,
      List<ServiceCategoryEntity> categoriesSelected});
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? categoriesSelected = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategoryEntity>,
      categoriesSelected: null == categoriesSelected
          ? _value.categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategoryEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingStateImplCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$BookingStateImplCopyWith(
          _$BookingStateImpl value, $Res Function(_$BookingStateImpl) then) =
      __$$BookingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ServiceCategoryEntity> categories,
      List<ServiceCategoryEntity> categoriesSelected});
}

/// @nodoc
class __$$BookingStateImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingStateImpl>
    implements _$$BookingStateImplCopyWith<$Res> {
  __$$BookingStateImplCopyWithImpl(
      _$BookingStateImpl _value, $Res Function(_$BookingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? categoriesSelected = null,
  }) {
    return _then(_$BookingStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategoryEntity>,
      categoriesSelected: null == categoriesSelected
          ? _value._categoriesSelected
          : categoriesSelected // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategoryEntity>,
    ));
  }
}

/// @nodoc

class _$BookingStateImpl implements _BookingState {
  const _$BookingStateImpl(
      {final List<ServiceCategoryEntity> categories = const [],
      final List<ServiceCategoryEntity> categoriesSelected = const []})
      : _categories = categories,
        _categoriesSelected = categoriesSelected;

  final List<ServiceCategoryEntity> _categories;
  @override
  @JsonKey()
  List<ServiceCategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ServiceCategoryEntity> _categoriesSelected;
  @override
  @JsonKey()
  List<ServiceCategoryEntity> get categoriesSelected {
    if (_categoriesSelected is EqualUnmodifiableListView)
      return _categoriesSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesSelected);
  }

  @override
  String toString() {
    return 'BookingState(categories: $categories, categoriesSelected: $categoriesSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._categoriesSelected, _categoriesSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_categoriesSelected));

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStateImplCopyWith<_$BookingStateImpl> get copyWith =>
      __$$BookingStateImplCopyWithImpl<_$BookingStateImpl>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
          {final List<ServiceCategoryEntity> categories,
          final List<ServiceCategoryEntity> categoriesSelected}) =
      _$BookingStateImpl;

  @override
  List<ServiceCategoryEntity> get categories;
  @override
  List<ServiceCategoryEntity> get categoriesSelected;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingStateImplCopyWith<_$BookingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
