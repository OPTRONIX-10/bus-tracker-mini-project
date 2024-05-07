part of 'staff_detail_bloc.dart';

@freezed
class StaffDetailState with _$StaffDetailState {
  const factory StaffDetailState(
      {required bool isLoading,
      required Option<Either<MainFailure, StaffDetialModel>>
          staffDetailsFetched}) = _StaffDetailState;

  factory StaffDetailState.initial() =>
      StaffDetailState(isLoading: false, staffDetailsFetched: none());
}
