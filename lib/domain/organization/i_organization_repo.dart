import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';
import 'package:safe_zone/domain/service/service.dart';

abstract class IOrganizationRepo {
  Future<Either<Failure, bool>> isRegistered();
  Stream<Either<Failure, Organization>> watchCurrent();
  Stream<Either<Failure, List<Organization>>> watchAll();
  Stream<Either<Failure, Organization>> watch(String id);
  Future<Either<Failure, Unit>> updateCurrent(Organization organization);

  Future<Either<Failure, String>> uploadLogo();
  Future<Either<Failure, String>> uploadCover();

  //Org Address
  Future<Either<Failure, Unit>> updateAddress(OrganizationAddress address);

  Stream<Either<Failure, OrganizationAddress>> watchCurrentAddress();

  Stream<Either<Failure, OrganizationAddress>> watchAddress(String id);

  // Org Bank Details

  Future<Either<Failure, Unit>> updateBankDetails(
    OrganizationBankDetails bankDetails,
  );

  Stream<Either<Failure, OrganizationBankDetails>> watchCurrentBankDetails();

  Stream<Either<Failure, OrganizationBankDetails>> watchBankDetails(String id);

  // Org Ratings

  Stream<Either<Failure, List<OrganizationRating>>> watchCurrentRatings();

  Stream<Either<Failure, List<OrganizationRating>>> watchRatings(
    String organizationId,
  );
  Future<Either<Failure, Unit>> createRating(OrganizationRating rating);

  // Org Service
  Stream<Either<Failure, List<DonationService>>> watchServices(
    String organizationId,
  );

  Stream<Either<Failure, List<DonationService>>> watchCurrentServices();
  Stream<Either<Failure, bool>> watchServiceIsSelectedOrg(String serviceId);

  // Org Service
  Future<Either<Failure, Unit>> addOrgService(String serviceId);
  Future<Either<Failure, Unit>> removeOrgService(String serviceId);

  // Stats
  Stream<Either<Failure, int>> watchTotalOrgs();
}
