import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/donation/i_donation_repo.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/infrastructure/services/donation_service.dart';

@LazySingleton(as: IDonationRepo)
class DonationRepo implements IDonationRepo {
  final DonationService _donationService;

  DonationRepo(this._donationService);
  @override
  Future<Either<Failure, Donation>> create() {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Donation>>> getForCurrentOrg() {
    // TODO: implement getForCurrentOrg
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Donation>>> getForCurrentUser() {
    // TODO: implement getForCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Donation>>> updateState(DonationState state) {
    // TODO: implement updateState
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> uploadPayslip() {
    // TODO: implement uploadPayslip
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, int>> watchTotalDonations() {
    return Stream.value(
      right<Failure, int>(0), // Replace with actual implementation
    );
  }
}
