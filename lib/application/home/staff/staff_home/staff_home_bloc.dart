
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/home/staff/i_staff_home_repo.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';
part 'staff_home_event.dart';
part 'staff_home_state.dart';
part 'staff_home_bloc.freezed.dart';

@injectable
class StaffHomeBloc extends Bloc<StaffHomeEvent, StaffHomeState> {
  IStaffHomeRepo _staffHomeRepo;
  StaffHomeBloc(this._staffHomeRepo) : super(StaffHomeState.initial()) {
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
      final location = await _staffHomeRepo.listenLocation();
      await location.fold((l) {
        emit(state.copyWith(locationUpdateSuccess: false));
      }, (r) {
        emit(state.copyWith(
          locationUpdateSuccess: true,
        ));
      });
    });

    on<_StopLocationListening>((event, emit) async {
      await _staffHomeRepo.stopListening();
      emit(state.copyWith(isLoading: false));
    });

    on<_ResetLocation>((event, emit) {
      emit(state.copyWith(
        isLoading: false,
        getCoordinates: none(),
        locationUpdateSuccess: false,
      ));
    });
  }
}
