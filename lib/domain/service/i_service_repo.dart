import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/service/service.dart';

abstract class IServiceRepo {
  Future<Either<Failure, DonationService>> getService(String id);
  Future<Either<Failure, List<DonationService>>> getServices();
}
