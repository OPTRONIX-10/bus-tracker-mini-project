import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project/domain/auth/i_auth_repo.dart';
import 'package:mini_project/domain/main_failurre/main_failure.dart';

part 'profile_photo_event.dart';
part 'profile_photo_state.dart';
part 'profile_photo_bloc.freezed.dart';

@Injectable()
class ProfilePhotoBloc extends Bloc<ProfilePhotoEvent, ProfilePhotoState> {
  final IAuthRepo _authRepo;
  ProfilePhotoBloc(this._authRepo) : super(ProfilePhotoState.initial()) {
    on<_PickedPhoto>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final file = await _authRepo.pickProfileImage(source: event.source);
      file.fold((l) {
        emit(state.copyWith(isLoading: false, photoSelected: some(left(l))));
      }, (r) {
        emit(state.copyWith(isLoading: false, photoSelected: some(right(r))));
      });
    });
  }
}
