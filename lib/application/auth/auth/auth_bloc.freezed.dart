// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) studentSignUp,
    required TResult Function(dynamic image, String phone, String name,
            String email, String password)
        staffSignUp,
    required TResult Function() signOut,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? studentSignUp,
    TResult? Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult? Function()? signOut,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? studentSignUp,
    TResult Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult Function()? signOut,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_StudentSignUp value) studentSignUp,
    required TResult Function(_StaffSignUp value) staffSignUp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_StudentSignUp value)? studentSignUp,
    TResult? Function(_StaffSignUp value)? staffSignUp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_StudentSignUp value)? studentSignUp,
    TResult Function(_StaffSignUp value)? staffSignUp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) studentSignUp,
    required TResult Function(dynamic image, String phone, String name,
            String email, String password)
        staffSignUp,
    required TResult Function() signOut,
    required TResult Function() resetState,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? studentSignUp,
    TResult? Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult? Function()? signOut,
    TResult? Function()? resetState,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? studentSignUp,
    TResult Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult Function()? signOut,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_StudentSignUp value) studentSignUp,
    required TResult Function(_StaffSignUp value) staffSignUp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ResetState value) resetState,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_StudentSignUp value)? studentSignUp,
    TResult? Function(_StaffSignUp value)? staffSignUp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_StudentSignUp value)? studentSignUp,
    TResult Function(_StaffSignUp value)? staffSignUp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn(
      {required final String email,
      required final String password}) = _$SignInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudentSignUpImplCopyWith<$Res> {
  factory _$$StudentSignUpImplCopyWith(
          _$StudentSignUpImpl value, $Res Function(_$StudentSignUpImpl) then) =
      __$$StudentSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$StudentSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StudentSignUpImpl>
    implements _$$StudentSignUpImplCopyWith<$Res> {
  __$$StudentSignUpImplCopyWithImpl(
      _$StudentSignUpImpl _value, $Res Function(_$StudentSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$StudentSignUpImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StudentSignUpImpl implements _StudentSignUp {
  const _$StudentSignUpImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.studentSignUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSignUpImplCopyWith<_$StudentSignUpImpl> get copyWith =>
      __$$StudentSignUpImplCopyWithImpl<_$StudentSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) studentSignUp,
    required TResult Function(dynamic image, String phone, String name,
            String email, String password)
        staffSignUp,
    required TResult Function() signOut,
    required TResult Function() resetState,
  }) {
    return studentSignUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? studentSignUp,
    TResult? Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult? Function()? signOut,
    TResult? Function()? resetState,
  }) {
    return studentSignUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? studentSignUp,
    TResult Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult Function()? signOut,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (studentSignUp != null) {
      return studentSignUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_StudentSignUp value) studentSignUp,
    required TResult Function(_StaffSignUp value) staffSignUp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ResetState value) resetState,
  }) {
    return studentSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_StudentSignUp value)? studentSignUp,
    TResult? Function(_StaffSignUp value)? staffSignUp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return studentSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_StudentSignUp value)? studentSignUp,
    TResult Function(_StaffSignUp value)? staffSignUp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (studentSignUp != null) {
      return studentSignUp(this);
    }
    return orElse();
  }
}

abstract class _StudentSignUp implements AuthEvent {
  const factory _StudentSignUp(
      {required final String email,
      required final String password}) = _$StudentSignUpImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$StudentSignUpImplCopyWith<_$StudentSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffSignUpImplCopyWith<$Res> {
  factory _$$StaffSignUpImplCopyWith(
          _$StaffSignUpImpl value, $Res Function(_$StaffSignUpImpl) then) =
      __$$StaffSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic image,
      String phone,
      String name,
      String email,
      String password});
}

/// @nodoc
class __$$StaffSignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StaffSignUpImpl>
    implements _$$StaffSignUpImplCopyWith<$Res> {
  __$$StaffSignUpImplCopyWithImpl(
      _$StaffSignUpImpl _value, $Res Function(_$StaffSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? phone = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$StaffSignUpImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StaffSignUpImpl implements _StaffSignUp {
  const _$StaffSignUpImpl(
      {required this.image,
      required this.phone,
      required this.name,
      required this.email,
      required this.password});

  @override
  final dynamic image;
  @override
  final String phone;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.staffSignUp(image: $image, phone: $phone, name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffSignUpImpl &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(image), phone, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffSignUpImplCopyWith<_$StaffSignUpImpl> get copyWith =>
      __$$StaffSignUpImplCopyWithImpl<_$StaffSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) studentSignUp,
    required TResult Function(dynamic image, String phone, String name,
            String email, String password)
        staffSignUp,
    required TResult Function() signOut,
    required TResult Function() resetState,
  }) {
    return staffSignUp(image, phone, name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? studentSignUp,
    TResult? Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult? Function()? signOut,
    TResult? Function()? resetState,
  }) {
    return staffSignUp?.call(image, phone, name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? studentSignUp,
    TResult Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult Function()? signOut,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (staffSignUp != null) {
      return staffSignUp(image, phone, name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_StudentSignUp value) studentSignUp,
    required TResult Function(_StaffSignUp value) staffSignUp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ResetState value) resetState,
  }) {
    return staffSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_StudentSignUp value)? studentSignUp,
    TResult? Function(_StaffSignUp value)? staffSignUp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return staffSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_StudentSignUp value)? studentSignUp,
    TResult Function(_StaffSignUp value)? staffSignUp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (staffSignUp != null) {
      return staffSignUp(this);
    }
    return orElse();
  }
}

abstract class _StaffSignUp implements AuthEvent {
  const factory _StaffSignUp(
      {required final dynamic image,
      required final String phone,
      required final String name,
      required final String email,
      required final String password}) = _$StaffSignUpImpl;

  dynamic get image;
  String get phone;
  String get name;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$StaffSignUpImplCopyWith<_$StaffSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements _SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) studentSignUp,
    required TResult Function(dynamic image, String phone, String name,
            String email, String password)
        staffSignUp,
    required TResult Function() signOut,
    required TResult Function() resetState,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? studentSignUp,
    TResult? Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult? Function()? signOut,
    TResult? Function()? resetState,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? studentSignUp,
    TResult Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult Function()? signOut,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_StudentSignUp value) studentSignUp,
    required TResult Function(_StaffSignUp value) staffSignUp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ResetState value) resetState,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_StudentSignUp value)? studentSignUp,
    TResult? Function(_StaffSignUp value)? staffSignUp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_StudentSignUp value)? studentSignUp,
    TResult Function(_StaffSignUp value)? staffSignUp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$SignOutImpl;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'AuthEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email, String password) studentSignUp,
    required TResult Function(dynamic image, String phone, String name,
            String email, String password)
        staffSignUp,
    required TResult Function() signOut,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email, String password)? studentSignUp,
    TResult? Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult? Function()? signOut,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signIn,
    TResult Function(String email, String password)? studentSignUp,
    TResult Function(dynamic image, String phone, String name, String email,
            String password)?
        staffSignUp,
    TResult Function()? signOut,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_StudentSignUp value) studentSignUp,
    required TResult Function(_StaffSignUp value) staffSignUp,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_StudentSignUp value)? studentSignUp,
    TResult? Function(_StaffSignUp value)? staffSignUp,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_StudentSignUp value)? studentSignUp,
    TResult Function(_StaffSignUp value)? staffSignUp,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements AuthEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
mixin _$AuthState {
  Option<Either<MainFailure, String>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {Option<Either<MainFailure, String>> authFailureOrSuccess,
      bool isLoading});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authFailureOrSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, String>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {Option<Either<MainFailure, String>> authFailureOrSuccess,
      bool isLoading});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authFailureOrSuccess = null,
    Object? isLoading = null,
  }) {
    return _then(_$AuthStateImpl(
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, String>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.authFailureOrSuccess, required this.isLoading});

  @override
  final Option<Either<MainFailure, String>> authFailureOrSuccess;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState(authFailureOrSuccess: $authFailureOrSuccess, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authFailureOrSuccess, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final Option<Either<MainFailure, String>> authFailureOrSuccess,
      required final bool isLoading}) = _$AuthStateImpl;

  @override
  Option<Either<MainFailure, String>> get authFailureOrSuccess;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
