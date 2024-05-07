part of 'student_home_bloc.dart';

@freezed
class StudentHomeEvent with _$StudentHomeEvent {
  // const factory StaffHomeEvent.convertLatLngToScreenCoordinates(
  //     {required GoogleMapController mapController,
  //     required LatLng position}) = _ConvertLatLngToScreenCoordinates;
  const factory StudentHomeEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory StudentHomeEvent.resetLocation() = _ResetLocation;
  const factory StudentHomeEvent.locationUpdateSuccess() = _LocationUpdateSuccess;
  const factory StudentHomeEvent.stopLocationListening() = _StopLocationListening;
  const factory StudentHomeEvent.locationUpdated(
      {required LocationModel location}) = _LocationUpdated;
}