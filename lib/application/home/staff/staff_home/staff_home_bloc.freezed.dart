// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StaffHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() resetLocation,
    required TResult Function() locationUpdateSuccess,
    required TResult Function() stopLocationListening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? resetLocation,
    TResult? Function()? locationUpdateSuccess,
    TResult? Function()? stopLocationListening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? resetLocation,
    TResult Function()? locationUpdateSuccess,
    TResult Function()? stopLocationListening,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_ResetLocation value) resetLocation,
    required TResult Function(_LocationUpdateSuccess value)
        locationUpdateSuccess,
    required TResult Function(_StopLocationListening value)
        stopLocationListening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_ResetLocation value)? resetLocation,
    TResult? Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult? Function(_StopLocationListening value)? stopLocationListening,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_ResetLocation value)? resetLocation,
    TResult Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult Function(_StopLocationListening value)? stopLocationListening,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffHomeEventCopyWith<$Res> {
  factory $StaffHomeEventCopyWith(
          StaffHomeEvent value, $Res Function(StaffHomeEvent) then) =
      _$StaffHomeEventCopyWithImpl<$Res, StaffHomeEvent>;
}

/// @nodoc
class _$StaffHomeEventCopyWithImpl<$Res, $Val extends StaffHomeEvent>
    implements $StaffHomeEventCopyWith<$Res> {
  _$StaffHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentLocationImplCopyWith<$Res> {
  factory _$$GetCurrentLocationImplCopyWith(_$GetCurrentLocationImpl value,
          $Res Function(_$GetCurrentLocationImpl) then) =
      __$$GetCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentLocationImplCopyWithImpl<$Res>
    extends _$StaffHomeEventCopyWithImpl<$Res, _$GetCurrentLocationImpl>
    implements _$$GetCurrentLocationImplCopyWith<$Res> {
  __$$GetCurrentLocationImplCopyWithImpl(_$GetCurrentLocationImpl _value,
      $Res Function(_$GetCurrentLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentLocationImpl implements _GetCurrentLocation {
  const _$GetCurrentLocationImpl();

  @override
  String toString() {
    return 'StaffHomeEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() resetLocation,
    required TResult Function() locationUpdateSuccess,
    required TResult Function() stopLocationListening,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? resetLocation,
    TResult? Function()? locationUpdateSuccess,
    TResult? Function()? stopLocationListening,
  }) {
    return getCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? resetLocation,
    TResult Function()? locationUpdateSuccess,
    TResult Function()? stopLocationListening,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_ResetLocation value) resetLocation,
    required TResult Function(_LocationUpdateSuccess value)
        locationUpdateSuccess,
    required TResult Function(_StopLocationListening value)
        stopLocationListening,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_ResetLocation value)? resetLocation,
    TResult? Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult? Function(_StopLocationListening value)? stopLocationListening,
  }) {
    return getCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_ResetLocation value)? resetLocation,
    TResult Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult Function(_StopLocationListening value)? stopLocationListening,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentLocation implements StaffHomeEvent {
  const factory _GetCurrentLocation() = _$GetCurrentLocationImpl;
}

/// @nodoc
abstract class _$$ResetLocationImplCopyWith<$Res> {
  factory _$$ResetLocationImplCopyWith(
          _$ResetLocationImpl value, $Res Function(_$ResetLocationImpl) then) =
      __$$ResetLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetLocationImplCopyWithImpl<$Res>
    extends _$StaffHomeEventCopyWithImpl<$Res, _$ResetLocationImpl>
    implements _$$ResetLocationImplCopyWith<$Res> {
  __$$ResetLocationImplCopyWithImpl(
      _$ResetLocationImpl _value, $Res Function(_$ResetLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetLocationImpl implements _ResetLocation {
  const _$ResetLocationImpl();

  @override
  String toString() {
    return 'StaffHomeEvent.resetLocation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() resetLocation,
    required TResult Function() locationUpdateSuccess,
    required TResult Function() stopLocationListening,
  }) {
    return resetLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? resetLocation,
    TResult? Function()? locationUpdateSuccess,
    TResult? Function()? stopLocationListening,
  }) {
    return resetLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? resetLocation,
    TResult Function()? locationUpdateSuccess,
    TResult Function()? stopLocationListening,
    required TResult orElse(),
  }) {
    if (resetLocation != null) {
      return resetLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_ResetLocation value) resetLocation,
    required TResult Function(_LocationUpdateSuccess value)
        locationUpdateSuccess,
    required TResult Function(_StopLocationListening value)
        stopLocationListening,
  }) {
    return resetLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_ResetLocation value)? resetLocation,
    TResult? Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult? Function(_StopLocationListening value)? stopLocationListening,
  }) {
    return resetLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_ResetLocation value)? resetLocation,
    TResult Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult Function(_StopLocationListening value)? stopLocationListening,
    required TResult orElse(),
  }) {
    if (resetLocation != null) {
      return resetLocation(this);
    }
    return orElse();
  }
}

abstract class _ResetLocation implements StaffHomeEvent {
  const factory _ResetLocation() = _$ResetLocationImpl;
}

/// @nodoc
abstract class _$$LocationUpdateSuccessImplCopyWith<$Res> {
  factory _$$LocationUpdateSuccessImplCopyWith(
          _$LocationUpdateSuccessImpl value,
          $Res Function(_$LocationUpdateSuccessImpl) then) =
      __$$LocationUpdateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationUpdateSuccessImplCopyWithImpl<$Res>
    extends _$StaffHomeEventCopyWithImpl<$Res, _$LocationUpdateSuccessImpl>
    implements _$$LocationUpdateSuccessImplCopyWith<$Res> {
  __$$LocationUpdateSuccessImplCopyWithImpl(_$LocationUpdateSuccessImpl _value,
      $Res Function(_$LocationUpdateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationUpdateSuccessImpl implements _LocationUpdateSuccess {
  const _$LocationUpdateSuccessImpl();

  @override
  String toString() {
    return 'StaffHomeEvent.locationUpdateSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationUpdateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() resetLocation,
    required TResult Function() locationUpdateSuccess,
    required TResult Function() stopLocationListening,
  }) {
    return locationUpdateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? resetLocation,
    TResult? Function()? locationUpdateSuccess,
    TResult? Function()? stopLocationListening,
  }) {
    return locationUpdateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? resetLocation,
    TResult Function()? locationUpdateSuccess,
    TResult Function()? stopLocationListening,
    required TResult orElse(),
  }) {
    if (locationUpdateSuccess != null) {
      return locationUpdateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_ResetLocation value) resetLocation,
    required TResult Function(_LocationUpdateSuccess value)
        locationUpdateSuccess,
    required TResult Function(_StopLocationListening value)
        stopLocationListening,
  }) {
    return locationUpdateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_ResetLocation value)? resetLocation,
    TResult? Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult? Function(_StopLocationListening value)? stopLocationListening,
  }) {
    return locationUpdateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_ResetLocation value)? resetLocation,
    TResult Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult Function(_StopLocationListening value)? stopLocationListening,
    required TResult orElse(),
  }) {
    if (locationUpdateSuccess != null) {
      return locationUpdateSuccess(this);
    }
    return orElse();
  }
}

abstract class _LocationUpdateSuccess implements StaffHomeEvent {
  const factory _LocationUpdateSuccess() = _$LocationUpdateSuccessImpl;
}

/// @nodoc
abstract class _$$StopLocationListeningImplCopyWith<$Res> {
  factory _$$StopLocationListeningImplCopyWith(
          _$StopLocationListeningImpl value,
          $Res Function(_$StopLocationListeningImpl) then) =
      __$$StopLocationListeningImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopLocationListeningImplCopyWithImpl<$Res>
    extends _$StaffHomeEventCopyWithImpl<$Res, _$StopLocationListeningImpl>
    implements _$$StopLocationListeningImplCopyWith<$Res> {
  __$$StopLocationListeningImplCopyWithImpl(_$StopLocationListeningImpl _value,
      $Res Function(_$StopLocationListeningImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopLocationListeningImpl implements _StopLocationListening {
  const _$StopLocationListeningImpl();

  @override
  String toString() {
    return 'StaffHomeEvent.stopLocationListening()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopLocationListeningImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() resetLocation,
    required TResult Function() locationUpdateSuccess,
    required TResult Function() stopLocationListening,
  }) {
    return stopLocationListening();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? resetLocation,
    TResult? Function()? locationUpdateSuccess,
    TResult? Function()? stopLocationListening,
  }) {
    return stopLocationListening?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? resetLocation,
    TResult Function()? locationUpdateSuccess,
    TResult Function()? stopLocationListening,
    required TResult orElse(),
  }) {
    if (stopLocationListening != null) {
      return stopLocationListening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_ResetLocation value) resetLocation,
    required TResult Function(_LocationUpdateSuccess value)
        locationUpdateSuccess,
    required TResult Function(_StopLocationListening value)
        stopLocationListening,
  }) {
    return stopLocationListening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_ResetLocation value)? resetLocation,
    TResult? Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult? Function(_StopLocationListening value)? stopLocationListening,
  }) {
    return stopLocationListening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_ResetLocation value)? resetLocation,
    TResult Function(_LocationUpdateSuccess value)? locationUpdateSuccess,
    TResult Function(_StopLocationListening value)? stopLocationListening,
    required TResult orElse(),
  }) {
    if (stopLocationListening != null) {
      return stopLocationListening(this);
    }
    return orElse();
  }
}

abstract class _StopLocationListening implements StaffHomeEvent {
  const factory _StopLocationListening() = _$StopLocationListeningImpl;
}

/// @nodoc
mixin _$StaffHomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, LatLng>> get getCoordinates =>
      throw _privateConstructorUsedError;
  bool get locationUpdateSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffHomeStateCopyWith<StaffHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffHomeStateCopyWith<$Res> {
  factory $StaffHomeStateCopyWith(
          StaffHomeState value, $Res Function(StaffHomeState) then) =
      _$StaffHomeStateCopyWithImpl<$Res, StaffHomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, LatLng>> getCoordinates,
      bool locationUpdateSuccess});
}

/// @nodoc
class _$StaffHomeStateCopyWithImpl<$Res, $Val extends StaffHomeState>
    implements $StaffHomeStateCopyWith<$Res> {
  _$StaffHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? getCoordinates = null,
    Object? locationUpdateSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getCoordinates: null == getCoordinates
          ? _value.getCoordinates
          : getCoordinates // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LatLng>>,
      locationUpdateSuccess: null == locationUpdateSuccess
          ? _value.locationUpdateSuccess
          : locationUpdateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffHomeStateImplCopyWith<$Res>
    implements $StaffHomeStateCopyWith<$Res> {
  factory _$$StaffHomeStateImplCopyWith(_$StaffHomeStateImpl value,
          $Res Function(_$StaffHomeStateImpl) then) =
      __$$StaffHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, LatLng>> getCoordinates,
      bool locationUpdateSuccess});
}

/// @nodoc
class __$$StaffHomeStateImplCopyWithImpl<$Res>
    extends _$StaffHomeStateCopyWithImpl<$Res, _$StaffHomeStateImpl>
    implements _$$StaffHomeStateImplCopyWith<$Res> {
  __$$StaffHomeStateImplCopyWithImpl(
      _$StaffHomeStateImpl _value, $Res Function(_$StaffHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? getCoordinates = null,
    Object? locationUpdateSuccess = null,
  }) {
    return _then(_$StaffHomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      getCoordinates: null == getCoordinates
          ? _value.getCoordinates
          : getCoordinates // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LatLng>>,
      locationUpdateSuccess: null == locationUpdateSuccess
          ? _value.locationUpdateSuccess
          : locationUpdateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StaffHomeStateImpl implements _StaffHomeState {
  const _$StaffHomeStateImpl(
      {required this.isLoading,
      required this.getCoordinates,
      required this.locationUpdateSuccess});

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, LatLng>> getCoordinates;
  @override
  final bool locationUpdateSuccess;

  @override
  String toString() {
    return 'StaffHomeState(isLoading: $isLoading, getCoordinates: $getCoordinates, locationUpdateSuccess: $locationUpdateSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffHomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.getCoordinates, getCoordinates) ||
                other.getCoordinates == getCoordinates) &&
            (identical(other.locationUpdateSuccess, locationUpdateSuccess) ||
                other.locationUpdateSuccess == locationUpdateSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, getCoordinates, locationUpdateSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffHomeStateImplCopyWith<_$StaffHomeStateImpl> get copyWith =>
      __$$StaffHomeStateImplCopyWithImpl<_$StaffHomeStateImpl>(
          this, _$identity);
}

abstract class _StaffHomeState implements StaffHomeState {
  const factory _StaffHomeState(
      {required final bool isLoading,
      required final Option<Either<MainFailure, LatLng>> getCoordinates,
      required final bool locationUpdateSuccess}) = _$StaffHomeStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, LatLng>> get getCoordinates;
  @override
  bool get locationUpdateSuccess;
  @override
  @JsonKey(ignore: true)
  _$$StaffHomeStateImplCopyWith<_$StaffHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
