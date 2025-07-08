// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool get isLoadingSignInWithPasword => throw _privateConstructorUsedError;
  bool get isLoadingSignInWithGoogle => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoadingSignInWithPasword,
      bool isLoadingSignInWithGoogle,
      User? user});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingSignInWithPasword = null,
    Object? isLoadingSignInWithGoogle = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingSignInWithPasword: null == isLoadingSignInWithPasword
          ? _value.isLoadingSignInWithPasword
          : isLoadingSignInWithPasword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSignInWithGoogle: null == isLoadingSignInWithGoogle
          ? _value.isLoadingSignInWithGoogle
          : isLoadingSignInWithGoogle // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingSignInWithPasword,
      bool isLoadingSignInWithGoogle,
      User? user});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingSignInWithPasword = null,
    Object? isLoadingSignInWithGoogle = null,
    Object? user = freezed,
  }) {
    return _then(_$AuthStateImpl(
      isLoadingSignInWithPasword: null == isLoadingSignInWithPasword
          ? _value.isLoadingSignInWithPasword
          : isLoadingSignInWithPasword // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSignInWithGoogle: null == isLoadingSignInWithGoogle
          ? _value.isLoadingSignInWithGoogle
          : isLoadingSignInWithGoogle // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.isLoadingSignInWithPasword = false,
      this.isLoadingSignInWithGoogle = false,
      this.user = null});

  @override
  @JsonKey()
  final bool isLoadingSignInWithPasword;
  @override
  @JsonKey()
  final bool isLoadingSignInWithGoogle;
  @override
  @JsonKey()
  final User? user;

  @override
  String toString() {
    return 'AuthState(isLoadingSignInWithPasword: $isLoadingSignInWithPasword, isLoadingSignInWithGoogle: $isLoadingSignInWithGoogle, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoadingSignInWithPasword,
                    isLoadingSignInWithPasword) ||
                other.isLoadingSignInWithPasword ==
                    isLoadingSignInWithPasword) &&
            (identical(other.isLoadingSignInWithGoogle,
                    isLoadingSignInWithGoogle) ||
                other.isLoadingSignInWithGoogle == isLoadingSignInWithGoogle) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoadingSignInWithPasword, isLoadingSignInWithGoogle, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoadingSignInWithPasword,
      final bool isLoadingSignInWithGoogle,
      final User? user}) = _$AuthStateImpl;

  @override
  bool get isLoadingSignInWithPasword;
  @override
  bool get isLoadingSignInWithGoogle;
  @override
  User? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
