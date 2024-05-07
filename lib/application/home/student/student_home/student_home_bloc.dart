import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/home/staff/model/location_model.dart';
import 'package:mini_project/domain/home/student/i_student_home.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

part 'student_home_event.dart';
part 'student_home_state.dart';
part 'student_home_bloc.freezed.dart';

@injectable
class StudentHomeBloc extends Bloc<StudentHomeEvent, StudentHomeState> {
  final IStudentHomeRepo _studentHomeRepo;
  late StreamSubscription<LocationModel> _locationStreamSubscription;

  StudentHomeBloc(this._studentHomeRepo) : super(StudentHomeState.initial()) {
    _locationStreamSubscription = _studentHomeRepo.locationStream.listen(
      (location) => add(StudentHomeEvent.locationUpdated(location: location)),
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
    //       await _studentHomeRepo.convertLatLngToScreenCoordinates(
    //           mapController: event.mapController, position: event.position);
    //   await screenCoordinates.fold((l) {}, (coordinates) async {

    //   });
    // });

    on<_GetCurrentLocation>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final result = await _studentHomeRepo.getCurrentLocation();
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
      await _studentHomeRepo.listenLocation();
    });

    on<_StopLocationListening>((event, emit) async {
      await _studentHomeRepo.stopListening();
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
