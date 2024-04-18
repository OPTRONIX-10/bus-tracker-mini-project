import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/auth/i_auth_repo.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo _authRepo;
  AuthBloc(this._authRepo) : super(AuthState.initial()) {

    on<_SignIn>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final responce =
          await _authRepo.signin(email: event.email, password: event.password);
      await responce.fold((failure) {
        emit(state.copyWith(
          authFailureOrSuccess: some(left(failure)),
          isLoading: false,
        ));
      }, (sucess) async {
        await _authRepo.registerSharedPref(sucess);
        emit(state.copyWith(
          authFailureOrSuccess: some(right(sucess)),
          isLoading: false,
        ));
      });
    });

    // on<_StaffSignUp>((event, emit) async {
    //   emit(state.copyWith(
    //     isLoading: true,
    //   ));
    //   final responce = await _authRepo.staffSignup(
    //     // image: event.image,
    //     // phone: event.phone,
    //     // name: event.name,
    //     email: event.email,
    //     password: event.password,
    //   );
    //   await responce.fold((failure) {
    //     emit(state.copyWith(
    //       authFailureOrSuccess: some(left(failure)),
    //       isLoading: false,
    //     ));
    //   }, (sucess) async {
    //     await _authRepo.registerSharedPref(sucess);
    //     emit(state.copyWith(
    //       authFailureOrSuccess: some(right(sucess)),
    //       isLoading: false,
    //     ));
    //   });
    // });

    on<_StudentSignUp>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      
      final responce = await _authRepo.studentSignup(
        email: event.email,
        password: event.password,
      );
      await responce.fold((failure) {
        emit(state.copyWith(
          authFailureOrSuccess: some(left(failure)),
          isLoading: false,
        ));
      }, (sucess) async {
        await _authRepo.registerSharedPref(sucess);
        emit(state.copyWith(
          authFailureOrSuccess: some(right(sucess)),
          isLoading: false,
        ));
      });
    });

    on<_SignOut>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      final responce = await _authRepo.logout();
      await responce.fold((failure) {
        emit(state.copyWith(
          authFailureOrSuccess: some(left(failure)),
          isLoading: false,
        ));
      }, (sucess) async {
        await _authRepo.removeSharedpref();
        emit(state.copyWith(
          authFailureOrSuccess: Some(right('logout')),
          isLoading: false,
        ));
      });
    });
   
    on<_ResetState>((event, emit) {
      emit(state.copyWith(
        authFailureOrSuccess: none(),
        isLoading: false,
      ));
    });
  }
}
