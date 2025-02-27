import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/organization_service/organization_service.dart';
import 'package:safe_zone/domain/service/service.dart';

abstract class IOrganizationServiceRepo {
  Future<Either<Failure, List<Organization>>> getOrganizationForService(
    String serviceId,
  );
  Future<Either<Failure, List<DonationService>>> getServicesForOrganization(
    String organizationId,
  );
  Future<Either<Failure, OrganizationService>> getOrganizationService(
    String id,
  );
}
