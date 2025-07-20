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
<<<<<<< HEAD
import 'package:safe_zone/application/delete_service/delete_service_cubit.dart'
    as _i1022;
import 'package:safe_zone/application/delete_threat_category/delete_threat_category_cubit.dart'
    as _i146;
=======
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
import 'package:safe_zone/application/end_threat/end_threat_cubit.dart'
    as _i852;
import 'package:safe_zone/application/new_donation_service/new_donation_service_cubit.dart'
    as _i978;
import 'package:safe_zone/application/new_threat/new_threat_cubit.dart'
    as _i780;
import 'package:safe_zone/application/new_threat_category/new_threat_category_cubit.dart'
    as _i559;
<<<<<<< HEAD
import 'package:safe_zone/application/org_donation_tab/org_donation_tab_cubit.dart'
    as _i835;
import 'package:safe_zone/application/org_menu/org_menu_cubit.dart' as _i873;
import 'package:safe_zone/application/org_req_tab/org_req_tab_cubit.dart'
    as _i636;
=======
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
import 'package:safe_zone/application/select_services_org/select_services_org_cubit.dart'
    as _i518;
import 'package:safe_zone/application/select_threat_category/select_threat_category_cubit.dart'
    as _i72;
import 'package:safe_zone/application/select_threat_time/select_threat_time_cubit.dart'
    as _i355;
import 'package:safe_zone/application/select_town/select_town_cubit.dart'
    as _i87;
import 'package:safe_zone/application/signin_with_phone/signin_with_phone_cubit.dart'
    as _i170;
import 'package:safe_zone/application/update_bank_details/update_bank_details_cubit.dart'
    as _i978;
import 'package:safe_zone/application/update_org/update_org_cubit.dart'
    as _i239;
import 'package:safe_zone/application/update_org_address/update_org_address_cubit.dart'
    as _i917;
import 'package:safe_zone/application/update_org_service/update_org_service_cubit.dart'
    as _i31;
import 'package:safe_zone/application/update_user/update_user_cubit.dart'
    as _i265;
import 'package:safe_zone/application/update_user_address/update_user_address_cubit.dart'
    as _i440;
import 'package:safe_zone/application/upload_donation_service_icon/upload_donation_service_icon_cubit.dart'
    as _i542;
import 'package:safe_zone/application/upload_org_images/upload_org_images_cubit.dart'
    as _i71;
import 'package:safe_zone/application/upload_threat_category_icon/upload_threat_category_icon_cubit.dart'
    as _i91;
import 'package:safe_zone/application/upload_user_image/upload_user_image_cubit.dart'
    as _i961;
import 'package:safe_zone/application/watch_admin_stats/watch_admin_stats_cubit.dart'
    as _i474;
import 'package:safe_zone/application/watch_donation_services/watch_donation_services_cubit.dart'
    as _i66;
import 'package:safe_zone/application/watch_org_address/watch_org_address_cubit.dart'
    as _i568;
import 'package:safe_zone/application/watch_org_bank_details/watch_org_bank_details_cubit.dart'
    as _i519;
import 'package:safe_zone/application/watch_org_ratings/watch_org_ratings_cubit.dart'
    as _i914;
import 'package:safe_zone/application/watch_orgs/watch_orgs_cubit.dart' as _i88;
import 'package:safe_zone/application/watch_service_is_selected_org/watch_service_is_selected_org_cubit.dart'
    as _i106;
import 'package:safe_zone/application/watch_threat_categories/watch_threat_categories_cubit.dart'
    as _i179;
import 'package:safe_zone/application/watch_threat_category/watch_threat_category_cubit.dart'
    as _i718;
import 'package:safe_zone/application/watch_threats/watch_threats_cubit.dart'
    as _i650;
import 'package:safe_zone/application/watch_user_address/watch_user_address_cubit.dart'
    as _i344;
import 'package:safe_zone/application/watch_users/watch_users_cubit.dart'
    as _i823;
import 'package:safe_zone/core/constants.dart' as _i963;
import 'package:safe_zone/domain/auth/i_auth_repo.dart' as _i846;
import 'package:safe_zone/domain/donation/i_donation_repo.dart' as _i550;
import 'package:safe_zone/domain/organization/i_organization_repo.dart'
    as _i922;
import 'package:safe_zone/domain/service/i_donation_service_repo.dart' as _i504;
import 'package:safe_zone/domain/threat/i_threat_repo.dart' as _i129;
import 'package:safe_zone/domain/town/i_town_repo.dart' as _i260;
import 'package:safe_zone/domain/user/i_user_repo.dart' as _i569;
import 'package:safe_zone/infrastructure/data/towns.dart' as _i702;
import 'package:safe_zone/infrastructure/repo/auth_repo.dart' as _i276;
import 'package:safe_zone/infrastructure/repo/donation_repo.dart' as _i757;
import 'package:safe_zone/infrastructure/repo/donation_service_repo.dart'
    as _i481;
import 'package:safe_zone/infrastructure/repo/organization_repo.dart' as _i191;
import 'package:safe_zone/infrastructure/repo/threat_repo.dart' as _i259;
import 'package:safe_zone/infrastructure/repo/town_repo.dart' as _i499;
import 'package:safe_zone/infrastructure/repo/user_repo.dart' as _i54;
import 'package:safe_zone/infrastructure/services/auth_service.dart' as _i136;
import 'package:safe_zone/infrastructure/services/donation_service.dart'
    as _i252;
import 'package:safe_zone/infrastructure/services/donation_service_service.dart'
    as _i844;
import 'package:safe_zone/infrastructure/services/organization_service.dart'
    as _i96;
import 'package:safe_zone/infrastructure/services/threat_service.dart' as _i144;
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
<<<<<<< HEAD
    gh.factory<_i835.OrgDonationTabCubit>(() => _i835.OrgDonationTabCubit());
    gh.factory<_i873.OrgMenuCubit>(() => _i873.OrgMenuCubit());
    gh.factory<_i636.OrgReqTabCubit>(() => _i636.OrgReqTabCubit());
=======
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
    gh.factory<_i72.SelectThreatCategoryCubit>(
      () => _i72.SelectThreatCategoryCubit(),
    );
    gh.factory<_i355.SelectThreatTimeCubit>(
      () => _i355.SelectThreatTimeCubit(),
    );
    gh.singleton<_i702.TownData>(() => _i702.TownData());
    gh.singleton<_i204.AppRouter>(() => injectableModules.appRouter);
    gh.lazySingleton<_i252.DonationService>(() => _i252.DonationService());
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModules.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
      () => injectableModules.firestore,
    );
    gh.lazySingleton<_i457.FirebaseStorage>(
      () => injectableModules.firebaseStorage,
    );
    gh.lazySingleton<_i183.ImagePicker>(() => injectableModules.imagePicker);
    gh.lazySingleton<_i550.IDonationRepo>(
      () => _i757.DonationRepo(gh<_i252.DonationService>()),
    );
    gh.lazySingleton<_i260.ITownRepo>(
      () => _i499.TownRepo(gh<_i702.TownData>()),
    );
    gh.lazySingleton<_i844.DonationServiceService>(
      () => _i844.DonationServiceService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i457.FirebaseStorage>(),
        gh<_i183.ImagePicker>(),
      ),
    );
    gh.lazySingleton<_i96.OrgService>(
      () => _i96.OrgService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i457.FirebaseStorage>(),
        gh<_i183.ImagePicker>(),
      ),
    );
    gh.lazySingleton<_i144.ThreatService>(
      () => _i144.ThreatService(
        gh<_i974.FirebaseFirestore>(),
        gh<_i457.FirebaseStorage>(),
        gh<_i183.ImagePicker>(),
      ),
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
    gh.lazySingleton<_i504.IDonationServiceRepo>(
      () => _i481.DonationServiceRepo(gh<_i844.DonationServiceService>()),
    );
<<<<<<< HEAD
    gh.factory<_i1022.DeleteServiceCubit>(
      () => _i1022.DeleteServiceCubit(gh<_i504.IDonationServiceRepo>()),
    );
=======
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
    gh.factory<_i978.NewDonationServiceCubit>(
      () => _i978.NewDonationServiceCubit(gh<_i504.IDonationServiceRepo>()),
    );
    gh.factory<_i542.UploadDonationServiceIconCubit>(
      () => _i542.UploadDonationServiceIconCubit(
        gh<_i504.IDonationServiceRepo>(),
      ),
    );
    gh.factory<_i66.WatchDonationServicesCubit>(
      () => _i66.WatchDonationServicesCubit(gh<_i504.IDonationServiceRepo>()),
    );
    gh.lazySingleton<_i846.IAuthRepo>(
      () => _i276.AuthRepo(gh<_i136.AuthService>()),
    );
    gh.lazySingleton<_i569.IUserRepo>(
      () => _i54.UserRepo(gh<_i1023.UserService>(), gh<_i846.IAuthRepo>()),
    );
    gh.lazySingleton<_i129.IThreatRepo>(
      () => _i259.ThreatRepo(gh<_i144.ThreatService>(), gh<_i569.IUserRepo>()),
    );
<<<<<<< HEAD
    gh.factory<_i146.DeleteThreatCategoryCubit>(
      () => _i146.DeleteThreatCategoryCubit(gh<_i129.IThreatRepo>()),
    );
=======
>>>>>>> 06cf0e830f53098c42d45cb028fd7934c4138392
    gh.factory<_i852.EndThreatCubit>(
      () => _i852.EndThreatCubit(gh<_i129.IThreatRepo>()),
    );
    gh.factory<_i780.NewThreatCubit>(
      () => _i780.NewThreatCubit(gh<_i129.IThreatRepo>()),
    );
    gh.factory<_i559.NewThreatCategoryCubit>(
      () => _i559.NewThreatCategoryCubit(gh<_i129.IThreatRepo>()),
    );
    gh.factory<_i91.UploadThreatCategoryIconCubit>(
      () => _i91.UploadThreatCategoryIconCubit(gh<_i129.IThreatRepo>()),
    );
    gh.factory<_i650.WatchThreatsCubit>(
      () => _i650.WatchThreatsCubit(gh<_i129.IThreatRepo>()),
    );
    gh.factory<_i179.WatchThreatCategoriesCubit>(
      () => _i179.WatchThreatCategoriesCubit(gh<_i129.IThreatRepo>()),
    );
    gh.factory<_i718.WatchThreatCategoryCubit>(
      () => _i718.WatchThreatCategoryCubit(gh<_i129.IThreatRepo>()),
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
    gh.factory<_i823.WatchUsersCubit>(
      () => _i823.WatchUsersCubit(gh<_i569.IUserRepo>()),
    );
    gh.factory<_i344.WatchUserAddressCubit>(
      () => _i344.WatchUserAddressCubit(gh<_i569.IUserRepo>()),
    );
    gh.lazySingleton<_i922.IOrganizationRepo>(
      () =>
          _i191.OrganizationRepo(gh<_i96.OrgService>(), gh<_i846.IAuthRepo>()),
    );
    gh.factory<_i170.SigninWithPhoneCubit>(
      () => _i170.SigninWithPhoneCubit(gh<_i846.IAuthRepo>()),
    );
    gh.factory<_i978.UpdateBankDetailsCubit>(
      () => _i978.UpdateBankDetailsCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i239.UpdateOrgCubit>(
      () => _i239.UpdateOrgCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i917.UpdateOrgAddressCubit>(
      () => _i917.UpdateOrgAddressCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i31.UpdateOrgServiceCubit>(
      () => _i31.UpdateOrgServiceCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i71.UploadOrgImagesCubit>(
      () => _i71.UploadOrgImagesCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i568.WatchOrgAddressCubit>(
      () => _i568.WatchOrgAddressCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i519.WatchOrgBankDetailsCubit>(
      () => _i519.WatchOrgBankDetailsCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i914.WatchOrgRatingsCubit>(
      () => _i914.WatchOrgRatingsCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i106.WatchServiceIsSelectedOrgCubit>(
      () => _i106.WatchServiceIsSelectedOrgCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i518.SelectServicesOrgCubit>(
      () => _i518.SelectServicesOrgCubit(
        gh<_i922.IOrganizationRepo>(),
        gh<_i504.IDonationServiceRepo>(),
      ),
    );
    gh.factory<_i88.WatchOrgsCubit>(
      () => _i88.WatchOrgsCubit(gh<_i922.IOrganizationRepo>()),
    );
    gh.factory<_i474.WatchAdminStatsCubit>(
      () => _i474.WatchAdminStatsCubit(
        gh<_i922.IOrganizationRepo>(),
        gh<_i550.IDonationRepo>(),
        gh<_i569.IUserRepo>(),
        gh<_i504.IDonationServiceRepo>(),
        gh<_i129.IThreatRepo>(),
      ),
    );
    gh.factory<_i1022.AuthCubit>(
      () => _i1022.AuthCubit(
        gh<_i846.IAuthRepo>(),
        gh<_i569.IUserRepo>(),
        gh<_i963.StakeHolder>(),
        gh<_i922.IOrganizationRepo>(),
      ),
    );
    return this;
  }
}

class _$InjectableModules extends _i756.InjectableModules {}
