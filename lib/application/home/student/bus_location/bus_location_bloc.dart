import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/home/staff/model/location_model.dart';
import 'package:mini_project/domain/home/student/i_student_home.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

part 'bus_location_event.dart';
part 'bus_location_state.dart';
part 'bus_location_bloc.freezed.dart';

@injectable
class BusLocationBloc extends Bloc<BusLocationEvent, BusLocationState> {
  final IStudentHomeRepo _studentHomeRepo;
  late final StreamSubscription<LocationModel> _busLocationStreamSubscription;

  BusLocationBloc(this._studentHomeRepo) : super(BusLocationState.initial()) {
    _busLocationStreamSubscription = _studentHomeRepo.busLocationStream.listen(
      (location) =>
          add(BusLocationEvent.busLocationUpdated(location: location)),
    );
    on<_BusLocationUpdated>((event, emit) {
      try {
        emit(state.copyWith(
          getBusLocationModel: some(right(event.location)),
        ));
      } catch (e) {
        emit(state.copyWith(
          getBusLocationModel: some(
              left(MainFailure.firebaseFailure('Error updating location'))),
        ));
      }
    });
  }
}
