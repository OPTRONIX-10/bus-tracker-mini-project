// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mini_project/application/auth/auth/auth_bloc.dart' as _i9;
import 'package:mini_project/application/auth/profile_photo/profile_photo_bloc.dart'
    as _i10;
import 'package:mini_project/application/home/staff/staff_home/staff_home_bloc.dart'
    as _i11;
import 'package:mini_project/application/home/student/student_home/student_home_bloc.dart'
    as _i12;
import 'package:mini_project/application/home/student/student_staff_detail/staff_detail_bloc.dart'
    as _i13;
import 'package:mini_project/domain/auth/i_auth_repo.dart' as _i7;
import 'package:mini_project/domain/home/staff/i_staff_home_repo.dart' as _i5;
import 'package:mini_project/domain/home/student/i_student_home.dart' as _i3;
import 'package:mini_project/infrastructure/auth/auth_repo.dart' as _i8;
import 'package:mini_project/infrastructure/home/staff/staff_home_repo.dart'
    as _i6;
import 'package:mini_project/infrastructure/home/student/student_home_repo.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IStudentHomeRepo>(() => _i4.StudentHomeRepo());
    gh.lazySingleton<_i5.IStaffHomeRepo>(() => _i6.StaffHomeRepo());
    gh.lazySingleton<_i7.IAuthRepo>(() => _i8.AuthRepo());
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i7.IAuthRepo>()));
    gh.factory<_i10.ProfilePhotoBloc>(
        () => _i10.ProfilePhotoBloc(gh<_i7.IAuthRepo>()));
    gh.factory<_i11.StaffHomeBloc>(
        () => _i11.StaffHomeBloc(gh<_i5.IStaffHomeRepo>()));
    gh.factory<_i12.StudentHomeBloc>(
        () => _i12.StudentHomeBloc(gh<_i3.IStudentHomeRepo>()));
    gh.factory<_i13.StaffDetailBloc>(
        () => _i13.StaffDetailBloc(gh<_i3.IStudentHomeRepo>()));
    return this;
  }
}
