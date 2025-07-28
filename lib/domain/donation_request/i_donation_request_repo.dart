import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/failure/failure.dart';

abstract class IDonationRequestRepo {
  Future<Either<Failure, DonationRequest>> getDonationRequest(String id);
  Stream<Either<Failure, List<DonationRequest>>> watchByCurrentUser();
  Future<Either<Failure, int>> getDonationRequestsCountForService(
    String serviceId,
    String? status, // if null get all except REJECTED_BY_ADMIN
  );
  Future<Either<Failure, DonationRequest>> createDonationRequest(
    DonationRequest donationRequest,
  );
  Stream<List<DonationRequest>> watchDonationRequestsForUser();
}
