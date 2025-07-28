import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';
import 'package:safe_zone/domain/organization_service/organization_service.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/infrastructure/services/organization_service.dart';

@LazySingleton(as: IOrganizationRepo)
class OrganizationRepo implements IOrganizationRepo {
  final OrgService _orgService;
  final IAuthRepo _authRepo;

  OrganizationRepo(this._orgService, this._authRepo);

  @override
  Future<Either<Failure, Unit>> createRating(OrganizationRating rating) async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    return _orgService.createRating(
      rating.copyWith(userId: unitOrUid.getOrCrash()),
    );
  }

  @override
  Future<Either<Failure, bool>> isRegistered() async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    return _orgService.isExist(unitOrUid.getOrCrash());
  }

  @override
  Future<Either<Failure, Unit>> addOrgService(String serviceId) async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    return _orgService.createOrgService(
      OrganizationService.init(serviceId, unitOrUid.getOrCrash()),
    );
  }

  @override
  Future<Either<Failure, Unit>> removeOrgService(String serviceId) async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    return _orgService.removeOrgService(unitOrUid.getOrCrash(), serviceId);
  }

  @override
  Future<Either<Failure, Unit>> updateAddress(
    OrganizationAddress address,
  ) async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    final orgAddress = address.copyWith(organizationId: unitOrUid.getOrCrash());
    return _orgService.updateAddress(orgAddress);
  }

  @override
  Future<Either<Failure, Unit>> updateBankDetails(
    OrganizationBankDetails bankDetails,
  ) async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    final orgBankDetails = bankDetails.copyWith(
      organizationId: unitOrUid.getOrCrash(),
    );
    return _orgService.updateBankDetails(orgBankDetails);
  }

  @override
  Future<Either<Failure, Unit>> updateCurrent(Organization organization) async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    final org = organization.copyWith(id: unitOrUid.getOrCrash());
    return _orgService.updateOrganization(org);
  }

  @override
  Future<Either<Failure, String>> uploadLogo() async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    return _orgService.uploadLogo(unitOrUid.getOrCrash());
  }

  @override
  Stream<Either<Failure, Organization>> watch(String id) =>
      _orgService.watch(id);

  @override
  Stream<Either<Failure, OrganizationAddress>> watchAddress(String id) =>
      _orgService.watchAddress(id);

  @override
  Stream<Either<Failure, List<Organization>>> watchAll() =>
      _orgService.watchAll();

  @override
  Stream<Either<Failure, OrganizationBankDetails>> watchBankDetails(
    String id,
  ) => _orgService.watchBankDetails(id);

  @override
  Stream<Either<Failure, Organization>> watchCurrent() {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return Stream.value(left(const Failure('User not signed in')));
    }
    return _orgService.watch(unitOrUid.getOrCrash());
  }

  @override
  Stream<Either<Failure, OrganizationAddress>> watchCurrentAddress() {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return Stream.value(left(const Failure('User not signed in')));
    }
    return _orgService.watchAddress(unitOrUid.getOrCrash());
  }

  @override
  Stream<Either<Failure, OrganizationBankDetails>> watchCurrentBankDetails() {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return Stream.value(left(const Failure('User not signed in')));
    }
    return _orgService.watchBankDetails(unitOrUid.getOrCrash());
  }

  @override
  Stream<Either<Failure, List<OrganizationRating>>> watchCurrentRatings() {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return Stream.value(left(const Failure('User not signed in')));
    }
    return _orgService.watchRatings(unitOrUid.getOrCrash());
  }

  @override
  Stream<Either<Failure, List<DonationService>>> watchCurrentServices() {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return Stream.value(left(const Failure('User not signed in')));
    }
    return _orgService.watchServices(unitOrUid.getOrCrash());
  }

  @override
  Stream<Either<Failure, List<OrganizationRating>>> watchRatings(
    String orgId,
  ) => _orgService.watchRatings(orgId);

  @override
  Stream<Either<Failure, List<DonationService>>> watchServices(String orgId) =>
      _orgService.watchServices(orgId);

  @override
  Future<Either<Failure, String>> uploadCover() async {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    return _orgService.uploadCover(unitOrUid.getOrCrash());
  }

  @override
  Stream<Either<Failure, int>> watchTotalOrgs() => _orgService.watchTotalOrgs();

  @override
  Stream<Either<Failure, bool>> watchServiceIsSelectedOrg(String serviceId) {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return Stream.value(left(const Failure('User not signed in')));
    }
    return _orgService.watchServiceIsSelectedOrg(
      serviceId,
      unitOrUid.getOrCrash(),
    );
  }

  @override
  Stream<Either<Failure, Organization>> watchOrg(String id) =>
      _orgService.watch(id);
}
