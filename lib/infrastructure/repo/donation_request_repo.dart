import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/donation_request/i_donation_request_repo.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/infrastructure/services/donation_request_service.dart';

@LazySingleton(as: IDonationRequestRepo)
class DonationRequestRepo implements IDonationRequestRepo {
  final DonationRequestService _donationRequestService;
  final IAuthRepo _authRepo;
  DonationRequestRepo(this._donationRequestService, this._authRepo);
  @override
  Future<Either<Failure, DonationRequest>> createDonationRequest(
    DonationRequest donationRequest,
  ) {
    // TODO: implement createDonationRequest
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, DonationRequest>> getDonationRequest(String id) {
    // TODO: implement getDonationRequest
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, int>> getDonationRequestsCountForService(
    String serviceId,
    String? status,
  ) {
    // TODO: implement getDonationRequestsCountForService
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, List<DonationRequest>>> watchByCurrentUser() {
    final unitOrUid = _authRepo.getUid();
    if (unitOrUid.isLeft()) {
      return Stream.value(left(const Failure('User not signed in')));
    }
    return _donationRequestService.watchByUser(unitOrUid.getOrCrash());
  }

  @override
  Stream<List<DonationRequest>> watchDonationRequestsForUser() {
    // TODO: implement watchDonationRequestsForUser
    throw UnimplementedError();
  }
}
