// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:safe_zone/application/auth/auth_cubit.dart' as _i1022;
import 'package:safe_zone/application/signin_with_phone/signin_with_phone_cubit.dart'
    as _i170;
import 'package:safe_zone/domain/auth/i_auth_repo.dart' as _i846;
import 'package:safe_zone/infrastructure/services/auth_service.dart' as _i136;
import 'package:safe_zone/infrastructure/services/core/injectable_modules.dart'
    as _i854;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModules = _$InjectableModules();
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModules.firebaseAuth);
    gh.factory<_i1022.AuthCubit>(() => _i1022.AuthCubit(gh<_i846.IAuthRepo>()));
    gh.factory<_i170.SigninWithPhoneCubit>(
      () => _i170.SigninWithPhoneCubit(gh<_i846.IAuthRepo>()),
    );
    gh.lazySingleton<_i136.AuthService>(
      () => _i136.AuthService(gh<_i59.FirebaseAuth>()),
    );
    return this;
  }
}

class _$InjectableModules extends _i854.InjectableModules {}
