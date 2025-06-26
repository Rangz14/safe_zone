import 'package:dartz/dartz.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/failure/failure.dart';

abstract class IDonationRepo {
  // User
  Future<Either<Failure, Donation>> create();
  Future<Either<Failure, List<Donation>>> getForCurrentUser();
  Future<Either<Failure, String>> uploadPayslip();

  // Org
  Future<Either<Failure, List<Donation>>> getForCurrentOrg();
  Future<Either<Failure, List<Donation>>> updateState(DonationState state);
}
