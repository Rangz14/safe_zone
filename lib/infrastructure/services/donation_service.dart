import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/donation/donation.dart';
import 'package:safe_zone/domain/failure/failure.dart';

@lazySingleton
class DonationService {
  final FirebaseFirestore _firestore;
  DonationService(this._firestore);
  static const String donationsCollectionName = 'donations';

  Stream<Either<Failure, Donation>> watch(String id) {
    try {
      return _firestore
          .collection(donationsCollectionName)
          .doc(id)
          .snapshots()
          .map<Either<Failure, Donation>>((snapshot) {
            if (!snapshot.exists) {
              return left(Failure('Donation not found'));
            }
            final donation = Donation.fromJson(snapshot.data()!);
            return right(donation);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }
}
