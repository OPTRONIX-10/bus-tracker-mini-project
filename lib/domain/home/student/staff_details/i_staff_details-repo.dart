import 'package:dartz/dartz.dart';
import 'package:mini_project/domain/home/student/staff_details/model/model.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

abstract class IStaffDetailsRepo {
  Future<Either<MainFailure, StaffDetialModel>> getStaffDetails(String staffId);
}