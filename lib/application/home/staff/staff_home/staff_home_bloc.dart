import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/home/staff/i_staff_home_repo.dart';
import 'package:mini_project/domain/home/staff/model/location_model.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';
part 'staff_home_event.dart';
part 'staff_home_state.dart';
part 'staff_home_bloc.freezed.dart';

@injectable
class StaffHomeBloc extends Bloc<StaffHomeEvent, StaffHomeState> {
  final IStaffHomeRepo _staffHomeRepo;
  late StreamSubscription<LocationModel> _locationStreamSubscription;
  StaffHomeBloc(this._staffHomeRepo) : super(StaffHomeState.initial()) {
    _locationStreamSubscription = _staffHomeRepo.locationStream.listen(
      (location) => add(StaffHomeEvent.locationUpdated(location: location)),
    );
    on<_LocationUpdated>((event, emit) {
      try {
        emit(state.copyWith(
          getLocationModel: some(right(event.location)),
        ));
      } catch (e) {
        emit(state.copyWith(
          getLocationModel: some(
              left(MainFailure.firebaseFailure('Error updating location'))),
        ));
      }
    });
    // on<_ConvertLatLngToScreenCoordinates>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final screenCoordinates =
    //       await _staffHomeRepo.convertLatLngToScreenCoordinates(
    //           mapController: event.mapController, position: event.position);
    //   await screenCoordinates.fold((l) {}, (coordinates) async {

    //   });
    // });

    on<_GetCurrentLocation>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final result = await _staffHomeRepo.getCurrentLocation();
      await result.fold(
        (l) {
          emit(state.copyWith(
            isLoading: false,
            getCoordinates: some(left(l)),
          ));
        },
        (r) {
          emit(state.copyWith(
            isLoading: false,
            getCoordinates: some(right(r)),
          ));
        },
      );
    });
    on<_LocationUpdateSuccess>((event, emit) async {
      await _staffHomeRepo.listenLocation();
    });

    on<_StopLocationListening>((event, emit) async {
      await _staffHomeRepo.stopListening();
      emit(state.copyWith(isLoading: false));
    });

    on<_ResetLocation>((event, emit) {
      emit(state.copyWith(
        isLoading: false,
        getCoordinates: none(),
        getLocationModel: none(),
      ));
    });
  }
}
