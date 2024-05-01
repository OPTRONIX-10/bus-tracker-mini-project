// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mini_project/application/auth/auth/auth_bloc.dart' as _i7;
import 'package:mini_project/application/auth/profile_photo/profile_photo_bloc.dart'
    as _i8;
import 'package:mini_project/application/home/staff/staff_home/staff_home_bloc.dart'
    as _i9;
import 'package:mini_project/domain/auth/i_auth_repo.dart' as _i5;
import 'package:mini_project/domain/home/staff/i_staff_home_repo.dart' as _i3;
import 'package:mini_project/infrastructure/auth/auth_repo.dart' as _i6;
import 'package:mini_project/infrastructure/home/staff/staff_home_repo.dart'
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
    gh.lazySingleton<_i3.IStaffHomeRepo>(() => _i4.StaffHomeRepo());
    gh.lazySingleton<_i5.IAuthRepo>(() => _i6.AuthRepo());
    gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc(gh<_i5.IAuthRepo>()));
    gh.factory<_i8.ProfilePhotoBloc>(
        () => _i8.ProfilePhotoBloc(gh<_i5.IAuthRepo>()));
    gh.factory<_i9.StaffHomeBloc>(
        () => _i9.StaffHomeBloc(gh<_i3.IStaffHomeRepo>()));
    return this;
  }
}
