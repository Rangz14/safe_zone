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
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_picker/image_picker.dart' as _i183;
import 'package:injectable/injectable.dart' as _i526;
import 'package:safe_zone/application/auth/auth_cubit.dart' as _i1022;
import 'package:safe_zone/application/select_town/select_town_cubit.dart'
    as _i87;
import 'package:safe_zone/application/signin_with_phone/signin_with_phone_cubit.dart'
    as _i170;
import 'package:safe_zone/application/update_user/update_user_cubit.dart'
    as _i265;
import 'package:safe_zone/application/update_user_address/update_user_address_cubit.dart'
    as _i440;
import 'package:safe_zone/application/upload_user_image/upload_user_image_cubit.dart'
    as _i961;
import 'package:safe_zone/core/constants.dart' as _i963;
import 'package:safe_zone/domain/auth/i_auth_repo.dart' as _i846;
import 'package:safe_zone/domain/town/i_town_repo.dart' as _i260;
import 'package:safe_zone/domain/user/i_user_repo.dart' as _i569;
import 'package:safe_zone/infrastructure/data/towns.dart' as _i702;
import 'package:safe_zone/infrastructure/repo/auth_repo.dart' as _i276;
import 'package:safe_zone/infrastructure/repo/town_repo.dart' as _i499;
import 'package:safe_zone/infrastructure/repo/user_repo.dart' as _i54;
import 'package:safe_zone/infrastructure/services/auth_service.dart' as _i136;
import 'package:safe_zone/infrastructure/services/user_service.dart' as _i1023;
import 'package:safe_zone/injectable_modules.dart' as _i756;
import 'package:safe_zone/presentation/app.dart' as _i431;
import 'package:safe_zone/presentation/router/app_router.dart' as _i204;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModules = _$InjectableModules();
    gh.singleton<_i702.TownData>(() => _i702.TownData());
    gh.singleton<_i204.AppRouter>(() => injectableModules.appRouter);
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModules.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => injectableModules.firestore,
    );
    gh.lazySingleton<_i457.FirebaseStorage>(
      () => injectableModules.firebaseStorage,
    );
    gh.lazySingleton<_i183.ImagePicker>(() => injectableModules.imagePicker);
    gh.lazySingleton<_i260.ITownRepo>(
      () => _i499.TownRepo(gh<_i702.TownData>()),
    );
    gh.lazySingleton<_i1023.UserService>(
      () => _i1023.UserService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i457.FirebaseStorage>(),
        gh<_i183.ImagePicker>(),
      ),
    );
    gh.factory<_i431.App>(() => _i431.App.create(gh<_i204.AppRouter>()));
    gh.lazySingleton<_i136.AuthService>(
      () => _i136.AuthService(gh<_i59.FirebaseAuth>()),
    );
    gh.factory<_i87.SelectTownCubit>(
      () => _i87.SelectTownCubit(gh<_i260.ITownRepo>()),
    );
    gh.lazySingleton<_i569.IUserRepo>(
      () => _i54.UserRepo(gh<_i1023.UserService>(), gh<_i136.AuthService>()),
    );
    gh.lazySingleton<_i846.IAuthRepo>(
      () => _i276.AuthRepo(gh<_i136.AuthService>()),
    );
    gh.factory<_i265.UpdateUserCubit>(
      () => _i265.UpdateUserCubit(gh<_i569.IUserRepo>()),
    );
    gh.factory<_i440.UpdateUserAddressCubit>(
      () => _i440.UpdateUserAddressCubit(gh<_i569.IUserRepo>()),
    );
    gh.factory<_i961.UploadUserImageCubit>(
      () => _i961.UploadUserImageCubit(gh<_i569.IUserRepo>()),
    );
    gh.factory<_i170.SigninWithPhoneCubit>(
      () => _i170.SigninWithPhoneCubit(gh<_i846.IAuthRepo>()),
    );
    gh.factory<_i1022.AuthCubit>(
      () => _i1022.AuthCubit(
        gh<_i846.IAuthRepo>(),
        gh<_i569.IUserRepo>(),
        gh<_i963.StakeHolder>(),
      ),
    );
    return this;
  }
}

class _$InjectableModules extends _i756.InjectableModules {}
