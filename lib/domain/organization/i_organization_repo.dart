import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';
import 'package:safe_zone/domain/service/service.dart';

abstract class IOrganizationRepo {
  Future<Either<Failure, bool>> isRegistered();
  Future<Either<Failure, Organization>> getCurrent();
  Future<Either<Failure, List<Organization>>> getAll();
  Future<Either<Failure, Organization>> get(String id);

  //Org Address
  Future<Either<Failure, OrganizationAddress>> updateAddress(
    OrganizationAddress address,
  );

  Future<Either<Failure, OrganizationAddress>> getCurrentAddress();

  Future<Either<Failure, OrganizationAddress>> getAddress(String id);

  // Org Bank Details

  Future<Either<Failure, OrganizationBankDetails>> updateBankDetails(
    OrganizationBankDetails bankDetails,
  );

  Future<Either<Failure, OrganizationBankDetails>> getCurrentBankDetails();

  Future<Either<Failure, OrganizationBankDetails>> getBankDetails(
    String organizationId,
  );

  // Org Ratings

  Future<Either<Failure, List<OrganizationRating>>> getCurrentRatings();

  Future<Either<Failure, List<OrganizationRating>>> getRatings(
    String organizationId,
  );

  Future<Either<Failure, OrganizationRating>> getRating(String id);

  Future<Either<Failure, OrganizationRating>> createRating(
    OrganizationRating rating,
  );

  // Org Service
  Future<Either<Failure, List<DonationService>>> getServices(
    String organizationId,
  );

  Future<Either<Failure, List<DonationService>>> getCurrentServices();

  Future<Either<Failure, List<DonationService>>> updateServices(
    List<String> serviceIds,
  );
}
