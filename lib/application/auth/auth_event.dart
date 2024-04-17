part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(
      {required String email, required String password}) = _SignIn;
  const factory AuthEvent.studentSignUp(
      {required String email, required String password}) = _StudentSignUp;
  const factory AuthEvent.staffSignUp(
      {required dynamic image,
      required String phone,
      required String name,
      required String email,
      required String password}) = _StaffSignUp;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.resetState() = _ResetState;
}
