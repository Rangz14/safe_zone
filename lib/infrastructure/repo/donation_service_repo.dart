import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';
import 'package:safe_zone/domain/service/service.dart';
import 'package:safe_zone/infrastructure/services/donation_service_service.dart';

@LazySingleton(as: IDonationServiceRepo)
class DonationServiceRepo implements IDonationServiceRepo {
  final DonationServiceService _service;

  DonationServiceRepo(this._service);

  @override
  Future<Either<Failure, Unit>> createService(DonationService service) =>
      _service.createService(service);

  @override
  Future<Either<Failure, Unit>> deleteService(String id) =>
      _service.deleteService(id);

  @override
  Stream<Either<Failure, List<Organization>>> watchOrgs(String serviceId) =>
      _service.watchOrgs(serviceId);

  @override
  Future<Either<Failure, DonationService>> getService(String id) =>
      _service.getService(id);

  @override
  Future<Either<Failure, List<DonationService>>> getServices() =>
      _service.getServices();

  @override
  Stream<Either<Failure, List<DonationService>>> watchServices() =>
      _service.watchServices();

  @override
  Future<Either<Failure, String>> uploadIcon() => _service.uploadIcon();

  @override
  Stream<Either<Failure, int>> watchTotalServices() =>
      _service.watchTotalServices();

  @override
  Stream<Either<Failure, DonationService>> watchService(String id) =>
      _service.watchService(id);
}
