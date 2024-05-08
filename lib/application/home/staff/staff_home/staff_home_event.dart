part of 'staff_home_bloc.dart';

@freezed
class StaffHomeEvent with _$StaffHomeEvent {
  // const factory StaffHomeEvent.convertLatLngToScreenCoordinates(
  //     {required GoogleMapController mapController,
  //     required LatLng position}) = _ConvertLatLngToScreenCoordinates;
  const factory StaffHomeEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory StaffHomeEvent.resetLocation() = _ResetLocation;
  const factory StaffHomeEvent.locationUpdateSuccess() = _LocationUpdateSuccess;
  const factory StaffHomeEvent.stopLocationListening() = _StopLocationListening;
  const factory StaffHomeEvent.locationUpdated(
      {required LocationModel location}) = _LocationUpdated;
  const factory StaffHomeEvent.getStudentLocation(
      {required List<LocationModel> studentLocation}) = _GetStudentLocation;
}
