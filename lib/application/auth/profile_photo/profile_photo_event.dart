part of 'profile_photo_bloc.dart';

@freezed
class ProfilePhotoEvent with _$ProfilePhotoEvent {
  const factory ProfilePhotoEvent.pickedPhoto({required ImageSource source}) = _PickedPhoto;
}