import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

abstract class IAuthRepo {
  Future<Either<MainFailure, String>> signin(
      {required String email, required String password});
  Future<Either<MainFailure, bool>> logout();
  Future<Either<MainFailure, String>> staffSignup(
       {
      required dynamic image,
      required String phone,
      required String name,
      required String email,
      required String password});
  Future<Either<MainFailure, String>> studentSignup(
      {required String email, required String password});
  Future<void> registerSharedPref(String uid);
  Future<Either<MainFailure, dynamic>> pickProfileImage(
      {required ImageSource source});
  Future<Either<MainFailure, dynamic>> uploadProfileImageToStorage(
      {required dynamic image});

  Future<void> removeSharedpref();
}
