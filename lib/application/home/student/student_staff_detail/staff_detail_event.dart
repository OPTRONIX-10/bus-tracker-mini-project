part of 'staff_detail_bloc.dart';

@freezed
class StaffDetailEvent with _$StaffDetailEvent {
  const factory StaffDetailEvent.fetchStaffDetail() = _FetchStaffDetail;
}