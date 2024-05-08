// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bus_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BusLocationEvent {
  LocationModel get location => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel location) busLocationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationModel location)? busLocationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel location)? busLocationUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BusLocationUpdated value) busLocationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BusLocationUpdated value)? busLocationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BusLocationUpdated value)? busLocationUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusLocationEventCopyWith<BusLocationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusLocationEventCopyWith<$Res> {
  factory $BusLocationEventCopyWith(
          BusLocationEvent value, $Res Function(BusLocationEvent) then) =
      _$BusLocationEventCopyWithImpl<$Res, BusLocationEvent>;
  @useResult
  $Res call({LocationModel location});
}

/// @nodoc
class _$BusLocationEventCopyWithImpl<$Res, $Val extends BusLocationEvent>
    implements $BusLocationEventCopyWith<$Res> {
  _$BusLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusLocationUpdatedImplCopyWith<$Res>
    implements $BusLocationEventCopyWith<$Res> {
  factory _$$BusLocationUpdatedImplCopyWith(_$BusLocationUpdatedImpl value,
          $Res Function(_$BusLocationUpdatedImpl) then) =
      __$$BusLocationUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationModel location});
}

/// @nodoc
class __$$BusLocationUpdatedImplCopyWithImpl<$Res>
    extends _$BusLocationEventCopyWithImpl<$Res, _$BusLocationUpdatedImpl>
    implements _$$BusLocationUpdatedImplCopyWith<$Res> {
  __$$BusLocationUpdatedImplCopyWithImpl(_$BusLocationUpdatedImpl _value,
      $Res Function(_$BusLocationUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$BusLocationUpdatedImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }
}

/// @nodoc

class _$BusLocationUpdatedImpl implements _BusLocationUpdated {
  const _$BusLocationUpdatedImpl({required this.location});

  @override
  final LocationModel location;

  @override
  String toString() {
    return 'BusLocationEvent.busLocationUpdated(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusLocationUpdatedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusLocationUpdatedImplCopyWith<_$BusLocationUpdatedImpl> get copyWith =>
      __$$BusLocationUpdatedImplCopyWithImpl<_$BusLocationUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationModel location) busLocationUpdated,
  }) {
    return busLocationUpdated(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationModel location)? busLocationUpdated,
  }) {
    return busLocationUpdated?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationModel location)? busLocationUpdated,
    required TResult orElse(),
  }) {
    if (busLocationUpdated != null) {
      return busLocationUpdated(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BusLocationUpdated value) busLocationUpdated,
  }) {
    return busLocationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BusLocationUpdated value)? busLocationUpdated,
  }) {
    return busLocationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BusLocationUpdated value)? busLocationUpdated,
    required TResult orElse(),
  }) {
    if (busLocationUpdated != null) {
      return busLocationUpdated(this);
    }
    return orElse();
  }
}

abstract class _BusLocationUpdated implements BusLocationEvent {
  const factory _BusLocationUpdated({required final LocationModel location}) =
      _$BusLocationUpdatedImpl;

  @override
  LocationModel get location;
  @override
  @JsonKey(ignore: true)
  _$$BusLocationUpdatedImplCopyWith<_$BusLocationUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BusLocationState {
  Option<Either<MainFailure, LocationModel>> get getBusLocationModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BusLocationStateCopyWith<BusLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusLocationStateCopyWith<$Res> {
  factory $BusLocationStateCopyWith(
          BusLocationState value, $Res Function(BusLocationState) then) =
      _$BusLocationStateCopyWithImpl<$Res, BusLocationState>;
  @useResult
  $Res call({Option<Either<MainFailure, LocationModel>> getBusLocationModel});
}

/// @nodoc
class _$BusLocationStateCopyWithImpl<$Res, $Val extends BusLocationState>
    implements $BusLocationStateCopyWith<$Res> {
  _$BusLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBusLocationModel = null,
  }) {
    return _then(_value.copyWith(
      getBusLocationModel: null == getBusLocationModel
          ? _value.getBusLocationModel
          : getBusLocationModel // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LocationModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusLocationStateImplCopyWith<$Res>
    implements $BusLocationStateCopyWith<$Res> {
  factory _$$BusLocationStateImplCopyWith(_$BusLocationStateImpl value,
          $Res Function(_$BusLocationStateImpl) then) =
      __$$BusLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<MainFailure, LocationModel>> getBusLocationModel});
}

/// @nodoc
class __$$BusLocationStateImplCopyWithImpl<$Res>
    extends _$BusLocationStateCopyWithImpl<$Res, _$BusLocationStateImpl>
    implements _$$BusLocationStateImplCopyWith<$Res> {
  __$$BusLocationStateImplCopyWithImpl(_$BusLocationStateImpl _value,
      $Res Function(_$BusLocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getBusLocationModel = null,
  }) {
    return _then(_$BusLocationStateImpl(
      getBusLocationModel: null == getBusLocationModel
          ? _value.getBusLocationModel
          : getBusLocationModel // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, LocationModel>>,
    ));
  }
}

/// @nodoc

class _$BusLocationStateImpl implements _BusLocationState {
  const _$BusLocationStateImpl({required this.getBusLocationModel});

  @override
  final Option<Either<MainFailure, LocationModel>> getBusLocationModel;

  @override
  String toString() {
    return 'BusLocationState(getBusLocationModel: $getBusLocationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusLocationStateImpl &&
            (identical(other.getBusLocationModel, getBusLocationModel) ||
                other.getBusLocationModel == getBusLocationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getBusLocationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusLocationStateImplCopyWith<_$BusLocationStateImpl> get copyWith =>
      __$$BusLocationStateImplCopyWithImpl<_$BusLocationStateImpl>(
          this, _$identity);
}

abstract class _BusLocationState implements BusLocationState {
  const factory _BusLocationState(
      {required final Option<Either<MainFailure, LocationModel>>
          getBusLocationModel}) = _$BusLocationStateImpl;

  @override
  Option<Either<MainFailure, LocationModel>> get getBusLocationModel;
  @override
  @JsonKey(ignore: true)
  _$$BusLocationStateImplCopyWith<_$BusLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
