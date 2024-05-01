part of 'staff_home_bloc.dart';

@freezed
class StaffHomeState with _$StaffHomeState {
  const factory StaffHomeState(
      {required bool isLoading,
      required Option<Either<MainFailure, LatLng>> getCoordinates,
      required bool locationUpdateSuccess}) = _StaffHomeState;

  factory StaffHomeState.initial() => StaffHomeState(
        isLoading: false,
        getCoordinates: none(),
        locationUpdateSuccess: false,
      );
}
