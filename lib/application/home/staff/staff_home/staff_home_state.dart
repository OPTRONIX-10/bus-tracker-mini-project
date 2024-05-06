part of 'staff_home_bloc.dart';

@freezed
class StaffHomeState with _$StaffHomeState {
  const factory StaffHomeState({
    required bool isLoading,
    required Option<Either<MainFailure, LatLng>> getCoordinates,
    required Option<Either<MainFailure, LocationModel>> getLocationModel,
  }) = _StaffHomeState;

  factory StaffHomeState.initial() => StaffHomeState(
        isLoading: false,
        getCoordinates: none(),
        getLocationModel: none(),
      );
}
