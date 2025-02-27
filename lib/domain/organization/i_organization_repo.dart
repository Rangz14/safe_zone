import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';

abstract class IOrganizationRepo {
  Future<Either<Failure, List<Organization>>> getOrganizations();
  Future<Either<Failure, Organization>> getOrganization(String id);
  Future<Either<Failure, OrganizationAddress>> getOrganizationAddress(
    String organizationId,
  );
  Future<Either<Failure, List<OrganizationBankDetails>>>
  getOrganizationBankDetails(String organizationId);

  Future<Either<Failure, OrganizationBankDetails>> getOrganizationBankDetail(
    String id,
  );

  Future<Either<Failure, List<OrganizationRating>>> getOrganizationRatings(
    String organizationId,
  );

  Future<Either<Failure, OrganizationRating>> getOrganizationRating(String id);

  Future<Either<Failure, OrganizationRating>> createOrganizationRating(
    OrganizationRating rating,
  );
}
