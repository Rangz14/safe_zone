// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:safe_zone/application/auth/auth_cubit.dart' as _i1022;
import 'package:safe_zone/application/signin_with_phone/signin_with_phone_cubit.dart'
    as _i170;
import 'package:safe_zone/domain/auth/i_auth_repo.dart' as _i846;
import 'package:safe_zone/domain/user/i_user_repo.dart' as _i569;
import 'package:safe_zone/infrastructure/repo/auth_repo.dart' as _i276;
import 'package:safe_zone/infrastructure/repo/user_repo.dart' as _i54;
import 'package:safe_zone/infrastructure/services/auth_service.dart' as _i136;
import 'package:safe_zone/infrastructure/services/core/injectable_modules.dart'
    as _i854;
import 'package:safe_zone/infrastructure/services/user_service.dart' as _i1023;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModules = _$InjectableModules();
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModules.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => injectableModules.firestore,
    );
    gh.lazySingleton<_i1023.UserService>(
      () => _i1023.UserService(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i136.AuthService>(
      () => _i136.AuthService(gh<_i59.FirebaseAuth>()),
    );
    gh.lazySingleton<_i569.IUserRepo>(
      () => _i54.UserRepo(gh<_i1023.UserService>(), gh<_i136.AuthService>()),
    );
    gh.lazySingleton<_i846.IAuthRepo>(
      () => _i276.AuthRepo(gh<_i136.AuthService>()),
    );
    gh.factory<_i1022.AuthCubit>(
      () => _i1022.AuthCubit(gh<_i846.IAuthRepo>(), gh<_i569.IUserRepo>()),
    );
    gh.factory<_i170.SigninWithPhoneCubit>(
      () => _i170.SigninWithPhoneCubit(gh<_i846.IAuthRepo>()),
    );
    return this;
  }
}

class _$InjectableModules extends _i854.InjectableModules {}
