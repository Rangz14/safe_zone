import 'package:dartz/dartz.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/failure/failure.dart';

abstract class IDonationRepo {
  Stream<Either<Failure, Donation>> watch(String id);
  // User
  Future<Either<Failure, Donation>> create(Donation donation);
  Stream<Either<Failure, List<Donation>>> watchByCurrentUser();
  Future<Either<Failure, String>> uploadPayslip();

  // Org
  Stream<Either<Failure, List<Donation>>> watchByCurrentOrg();
  Future<Either<Failure, List<Donation>>> updateState(DonationState state);

  Stream<Either<Failure, int>> watchTotalDonations();
}
