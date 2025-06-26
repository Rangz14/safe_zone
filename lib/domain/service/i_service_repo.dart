import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/service/service.dart';

abstract class IServiceRepo {
  Future<Either<Failure, DonationService>> getService(String id);
  Future<Either<Failure, List<DonationService>>> getServices();
  Future<Either<Failure, DonationService>> createService(
    DonationService service,
  );
  Future<Either<Failure, DonationService>> updateService(
    DonationService service,
  );
  Future<Either<Failure, bool>> deleteService(String id);

  // Org Services
  Future<Either<Failure, List<Organization>>> getOrgs(String serviceId);
}
