part of 'student_home_bloc.dart';

@freezed
class StudentHomeState with _$StudentHomeState {
  const factory StudentHomeState({
    required bool isLoading,
    required Option<Either<MainFailure, LatLng>> getCoordinates,
    required Option<Either<MainFailure, LocationModel>> getLocationModel,
  }) = _StaffHomeState;

  factory StudentHomeState.initial() => StudentHomeState(
        isLoading: false,
        getCoordinates: none(),
        getLocationModel: none(),
      );
}
