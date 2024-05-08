part of 'bus_location_bloc.dart';

@freezed
class BusLocationEvent with _$BusLocationEvent {
  const factory BusLocationEvent.busLocationUpdated(
      {required LocationModel location}) = _BusLocationUpdated;
}
