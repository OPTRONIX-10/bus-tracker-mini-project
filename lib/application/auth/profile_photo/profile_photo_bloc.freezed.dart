// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfilePhotoEvent {
  ImageSource get source => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickedPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickedPhoto value) pickedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickedPhoto value)? pickedPhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickedPhoto value)? pickedPhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePhotoEventCopyWith<ProfilePhotoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePhotoEventCopyWith<$Res> {
  factory $ProfilePhotoEventCopyWith(
          ProfilePhotoEvent value, $Res Function(ProfilePhotoEvent) then) =
      _$ProfilePhotoEventCopyWithImpl<$Res, ProfilePhotoEvent>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class _$ProfilePhotoEventCopyWithImpl<$Res, $Val extends ProfilePhotoEvent>
    implements $ProfilePhotoEventCopyWith<$Res> {
  _$ProfilePhotoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickedPhotoImplCopyWith<$Res>
    implements $ProfilePhotoEventCopyWith<$Res> {
  factory _$$PickedPhotoImplCopyWith(
          _$PickedPhotoImpl value, $Res Function(_$PickedPhotoImpl) then) =
      __$$PickedPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$PickedPhotoImplCopyWithImpl<$Res>
    extends _$ProfilePhotoEventCopyWithImpl<$Res, _$PickedPhotoImpl>
    implements _$$PickedPhotoImplCopyWith<$Res> {
  __$$PickedPhotoImplCopyWithImpl(
      _$PickedPhotoImpl _value, $Res Function(_$PickedPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$PickedPhotoImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$PickedPhotoImpl implements _PickedPhoto {
  const _$PickedPhotoImpl({required this.source});

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ProfilePhotoEvent.pickedPhoto(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickedPhotoImpl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickedPhotoImplCopyWith<_$PickedPhotoImpl> get copyWith =>
      __$$PickedPhotoImplCopyWithImpl<_$PickedPhotoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickedPhoto,
  }) {
    return pickedPhoto(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickedPhoto,
  }) {
    return pickedPhoto?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickedPhoto,
    required TResult orElse(),
  }) {
    if (pickedPhoto != null) {
      return pickedPhoto(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickedPhoto value) pickedPhoto,
  }) {
    return pickedPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickedPhoto value)? pickedPhoto,
  }) {
    return pickedPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickedPhoto value)? pickedPhoto,
    required TResult orElse(),
  }) {
    if (pickedPhoto != null) {
      return pickedPhoto(this);
    }
    return orElse();
  }
}

abstract class _PickedPhoto implements ProfilePhotoEvent {
  const factory _PickedPhoto({required final ImageSource source}) =
      _$PickedPhotoImpl;

  @override
  ImageSource get source;
  @override
  @JsonKey(ignore: true)
  _$$PickedPhotoImplCopyWith<_$PickedPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfilePhotoState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<MainFailure, dynamic>> get photoSelected =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected)
        photofetchedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected)?
        photofetchedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected)?
        photofetchedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotofetchedSuccess value) photofetchedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotofetchedSuccess value)? photofetchedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotofetchedSuccess value)? photofetchedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePhotoStateCopyWith<ProfilePhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePhotoStateCopyWith<$Res> {
  factory $ProfilePhotoStateCopyWith(
          ProfilePhotoState value, $Res Function(ProfilePhotoState) then) =
      _$ProfilePhotoStateCopyWithImpl<$Res, ProfilePhotoState>;
  @useResult
  $Res call(
      {bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected});
}

/// @nodoc
class _$ProfilePhotoStateCopyWithImpl<$Res, $Val extends ProfilePhotoState>
    implements $ProfilePhotoStateCopyWith<$Res> {
  _$ProfilePhotoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? photoSelected = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      photoSelected: null == photoSelected
          ? _value.photoSelected
          : photoSelected // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotofetchedSuccessImplCopyWith<$Res>
    implements $ProfilePhotoStateCopyWith<$Res> {
  factory _$$PhotofetchedSuccessImplCopyWith(_$PhotofetchedSuccessImpl value,
          $Res Function(_$PhotofetchedSuccessImpl) then) =
      __$$PhotofetchedSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected});
}

/// @nodoc
class __$$PhotofetchedSuccessImplCopyWithImpl<$Res>
    extends _$ProfilePhotoStateCopyWithImpl<$Res, _$PhotofetchedSuccessImpl>
    implements _$$PhotofetchedSuccessImplCopyWith<$Res> {
  __$$PhotofetchedSuccessImplCopyWithImpl(_$PhotofetchedSuccessImpl _value,
      $Res Function(_$PhotofetchedSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? photoSelected = null,
  }) {
    return _then(_$PhotofetchedSuccessImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      photoSelected: null == photoSelected
          ? _value.photoSelected
          : photoSelected // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$PhotofetchedSuccessImpl implements _PhotofetchedSuccess {
  const _$PhotofetchedSuccessImpl(
      {required this.isLoading, required this.photoSelected});

  @override
  final bool isLoading;
  @override
  final Option<Either<MainFailure, dynamic>> photoSelected;

  @override
  String toString() {
    return 'ProfilePhotoState.photofetchedSuccess(isLoading: $isLoading, photoSelected: $photoSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotofetchedSuccessImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.photoSelected, photoSelected) ||
                other.photoSelected == photoSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, photoSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotofetchedSuccessImplCopyWith<_$PhotofetchedSuccessImpl> get copyWith =>
      __$$PhotofetchedSuccessImplCopyWithImpl<_$PhotofetchedSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected)
        photofetchedSuccess,
  }) {
    return photofetchedSuccess(isLoading, photoSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected)?
        photofetchedSuccess,
  }) {
    return photofetchedSuccess?.call(isLoading, photoSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, Option<Either<MainFailure, dynamic>> photoSelected)?
        photofetchedSuccess,
    required TResult orElse(),
  }) {
    if (photofetchedSuccess != null) {
      return photofetchedSuccess(isLoading, photoSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotofetchedSuccess value) photofetchedSuccess,
  }) {
    return photofetchedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotofetchedSuccess value)? photofetchedSuccess,
  }) {
    return photofetchedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotofetchedSuccess value)? photofetchedSuccess,
    required TResult orElse(),
  }) {
    if (photofetchedSuccess != null) {
      return photofetchedSuccess(this);
    }
    return orElse();
  }
}

abstract class _PhotofetchedSuccess implements ProfilePhotoState {
  const factory _PhotofetchedSuccess(
          {required final bool isLoading,
          required final Option<Either<MainFailure, dynamic>> photoSelected}) =
      _$PhotofetchedSuccessImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<MainFailure, dynamic>> get photoSelected;
  @override
  @JsonKey(ignore: true)
  _$$PhotofetchedSuccessImplCopyWith<_$PhotofetchedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
