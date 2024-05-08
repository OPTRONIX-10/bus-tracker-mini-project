part of 'bus_location_bloc.dart';

@freezed
class BusLocationState with _$BusLocationState {
  const factory BusLocationState({
    required Option<Either<MainFailure, LocationModel>> getBusLocationModel,
  }) = _BusLocationState;

  factory BusLocationState.initial() => BusLocationState(getBusLocationModel: none());
}
