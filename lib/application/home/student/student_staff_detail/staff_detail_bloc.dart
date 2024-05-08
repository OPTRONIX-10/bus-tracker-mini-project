import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/home/student/i_student_home.dart';
import 'package:mini_project/domain/home/student/model/model.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

part 'staff_detail_event.dart';
part 'staff_detail_state.dart';
part 'staff_detail_bloc.freezed.dart';

@injectable
class StaffDetailBloc extends Bloc<StaffDetailEvent, StaffDetailState> {
  final IStudentHomeRepo _studentHomeRepo;
  StaffDetailBloc(this._studentHomeRepo) : super(StaffDetailState.initial()) {
    on<_FetchStaffDetail>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final detailModel = await _studentHomeRepo.getStaffDetails();
      detailModel.fold((l) {
        emit(state.copyWith(
            isLoading: false, staffDetailsFetched: some(left(l))));
      }, (r) {
        emit(state.copyWith(
            isLoading: false, staffDetailsFetched: some(right(r))));
      });
    });
  }
}
