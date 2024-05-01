part of 'profile_photo_bloc.dart';

@freezed
class ProfilePhotoState with _$ProfilePhotoState {
  const factory ProfilePhotoState.photofetchedSuccess(
          {required bool isLoading,
          required Option<Either<MainFailure, dynamic>> photoSelected}) =
      _PhotofetchedSuccess;

  factory ProfilePhotoState.initial() => ProfilePhotoState.photofetchedSuccess(
      isLoading: false, photoSelected: none());
}
