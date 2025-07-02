import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/service/service.dart';

abstract class IDonationServiceRepo {
  Future<Either<Failure, DonationService>> getService(String id);
  Future<Either<Failure, List<DonationService>>> getServices();
  Stream<Either<Failure, List<DonationService>>> watchServices();
  Future<Either<Failure, Unit>> createService(DonationService service);
  Future<Either<Failure, String>> uploadIcon();
  Future<Either<Failure, Unit>> deleteService(String id);

  // Org Services
  Stream<Either<Failure, List<Organization>>> watchOrgs(String serviceId);

  Stream<Either<Failure, int>> watchTotalServices();
}
