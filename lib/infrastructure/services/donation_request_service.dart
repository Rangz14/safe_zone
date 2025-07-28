import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/donation_request/donation_request.dart';
import 'package:safe_zone/domain/failure/failure.dart';

@lazySingleton
class DonationRequestService {
  final FirebaseFirestore _firestore;

  DonationRequestService(this._firestore);

  Stream<Either<Failure, List<DonationRequest>>> watchByUser(String orCrash) {
    try {
      return _firestore
          .collection('donation_requests')
          .where('userId', isEqualTo: orCrash)
          .snapshots()
          .map<Either<Failure, List<DonationRequest>>>((snapshot) {
            if (snapshot.docs.isEmpty) {
              return right([]);
            }
            final requests =
                snapshot.docs
                    .map((doc) => DonationRequest.fromJson(doc.data()))
                    .toList();
            return right(requests);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }
}
