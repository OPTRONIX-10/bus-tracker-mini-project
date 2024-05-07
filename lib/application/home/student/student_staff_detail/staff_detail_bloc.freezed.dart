// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StaffDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStaffDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStaffDetail value) fetchStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStaffDetail value)? fetchStaffDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStaffDetail value)? fetchStaffDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffDetailEventCopyWith<$Res> {
  factory $StaffDetailEventCopyWith(
          StaffDetailEvent value, $Res Function(StaffDetailEvent) then) =
      _$StaffDetailEventCopyWithImpl<$Res, StaffDetailEvent>;
}

/// @nodoc
class _$StaffDetailEventCopyWithImpl<$Res, $Val extends StaffDetailEvent>
    implements $StaffDetailEventCopyWith<$Res> {
  _$StaffDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchStaffDetailImplCopyWith<$Res> {
  factory _$$FetchStaffDetailImplCopyWith(_$FetchStaffDetailImpl value,
          $Res Function(_$FetchStaffDetailImpl) then) =
      __$$FetchStaffDetailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStaffDetailImplCopyWithImpl<$Res>
    extends _$StaffDetailEventCopyWithImpl<$Res, _$FetchStaffDetailImpl>
    implements _$$FetchStaffDetailImplCopyWith<$Res> {
  __$$FetchStaffDetailImplCopyWithImpl(_$FetchStaffDetailImpl _value,
      $Res Function(_$FetchStaffDetailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchStaffDetailImpl implements _FetchStaffDetail {
  const _$FetchStaffDetailImpl();

  @override
  String toString() {
    return 'StaffDetailEvent.fetchStaffDetail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchStaffDetailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchStaffDetail,
  }) {
    return fetchStaffDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchStaffDetail,
  }) {
    return fetchStaffDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchStaffDetail,
    required TResult orElse(),
  }) {
    if (fetchStaffDetail != null) {
      return fetchStaffDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchStaffDetail value) fetchStaffDetail,
  }) {
    return fetchStaffDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchStaffDetail value)? fetchStaffDetail,
  }) {
    return fetchStaffDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchStaffDetail value)? fetchStaffDetail,
    required TResult orElse(),
  }) {
    if (fetchStaffDetail != null) {
      return fetchStaffDetail(this);
    }
    return orElse();
  }
}

abstract class _FetchStaffDetail implements StaffDetailEvent {
  const factory _FetchStaffDetail() = _$FetchStaffDetailImpl;
}

/// @nodoc
mixin _$StaffDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, StaffDetialModel>> get staffDetailsFetched =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StaffDetailStateCopyWith<StaffDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffDetailStateCopyWith<$Res> {
  factory $StaffDetailStateCopyWith(
          StaffDetailState value, $Res Function(StaffDetailState) then) =
      _$StaffDetailStateCopyWithImpl<$Res, StaffDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, StaffDetialModel>> staffDetailsFetched});
}

/// @nodoc
class _$StaffDetailStateCopyWithImpl<$Res, $Val extends StaffDetailState>
    implements $StaffDetailStateCopyWith<$Res> {
  _$StaffDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? staffDetailsFetched = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      staffDetailsFetched: null == staffDetailsFetched
          ? _value.staffDetailsFetched
          : staffDetailsFetched // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, StaffDetialModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffDetailStateImplCopyWith<$Res>
    implements $StaffDetailStateCopyWith<$Res> {
  factory _$$StaffDetailStateImplCopyWith(_$StaffDetailStateImpl value,
          $Res Function(_$StaffDetailStateImpl) then) =
      __$$StaffDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<MainFailure, StaffDetialModel>> staffDetailsFetched});
}

/// @nodoc
class __$$StaffDetailStateImplCopyWithImpl<$Res>
    extends _$StaffDetailStateCopyWithImpl<$Res, _$StaffDetailStateImpl>
    implements _$$StaffDetailStateImplCopyWith<$Res> {
  __$$StaffDetailStateImplCopyWithImpl(_$StaffDetailStateImpl _value,
      $Res Function(_$StaffDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? staffDetailsFetched = null,
  }) {
    return _then(_$StaffDetailStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      staffDetailsFetched: null == staffDetailsFetched
          ? _value.staffDetailsFetched
          : staffDetailsFetched // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, StaffDetialModel>>,
    ));
  }
}

/// @nodoc

class _$StaffDetailStateImpl implements _StaffDetailState {
  const _$StaffDetailStateImpl(
      {required this.isLoading, required this.staffDetailsFetched});

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, StaffDetialModel>> staffDetailsFetched;

  @override
  String toString() {
    return 'StaffDetailState(isLoading: $isLoading, staffDetailsFetched: $staffDetailsFetched)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffDetailStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.staffDetailsFetched, staffDetailsFetched) ||
                other.staffDetailsFetched == staffDetailsFetched));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, staffDetailsFetched);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffDetailStateImplCopyWith<_$StaffDetailStateImpl> get copyWith =>
      __$$StaffDetailStateImplCopyWithImpl<_$StaffDetailStateImpl>(
          this, _$identity);
}

abstract class _StaffDetailState implements StaffDetailState {
  const factory _StaffDetailState(
      {required final bool isLoading,
      required final Option<Either<MainFailure, StaffDetialModel>>
          staffDetailsFetched}) = _$StaffDetailStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, StaffDetialModel>> get staffDetailsFetched;
  @override
  @JsonKey(ignore: true)
  _$$StaffDetailStateImplCopyWith<_$StaffDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
