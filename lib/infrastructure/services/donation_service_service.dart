import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/iterable_x.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/service/service.dart';

@lazySingleton
class DonationServiceService {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final ImagePicker _imagePicker;
  static const String _donationServicesCollection = 'donation_services';
  static const String _orgServicesCollection = 'org_services';
  static const String _organizationsCollection = "organizations";

  DonationServiceService(this._firestore, this._storage, this._imagePicker);

  Future<Either<Failure, List<DonationService>>> getServices() async {
    try {
      final snapshot =
          await _firestore.collection(_donationServicesCollection).get();
      final services =
          snapshot.docs
              .map((doc) => DonationService.fromJson(doc.data()))
              .toList();
      return right(services);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, DonationService>> getService(String id) async {
    try {
      final doc =
          await _firestore
              .collection(_donationServicesCollection)
              .doc(id)
              .get();
      if (doc.exists) {
        return right(DonationService.fromJson(doc.data()!));
      }
      return left(Failure('Service not found'));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> createService(DonationService service) async {
    try {
      final doc = _firestore.collection(_donationServicesCollection).doc();
      final serviceWithId = service.copyWith(id: doc.id);
      await doc.set(serviceWithId.toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> deleteService(String id) async {
    try {
      await _firestore.collection(_donationServicesCollection).doc(id).delete();
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<Either<Failure, List<DonationService>>> watchServices() {
    try {
      return _firestore
          .collection(_donationServicesCollection)
          .snapshots()
          .map<Either<Failure, List<DonationService>>>((snapshot) {
            final services =
                snapshot.docs
                    .map((doc) => DonationService.fromJson(doc.data()))
                    .toList();
            return right(services);
          })
          .handleError((error) => left(error.toString()));
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Future<Either<Failure, String>> uploadIcon() async {
    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 600,
      );
      if (image == null) {
        return left(Failure('No image selected'));
      }
      final uuid = DateTime.now().millisecondsSinceEpoch.toString();

      final ref = _storage.ref().child('donation_service_icons/$uuid.png');
      final bytes = await image.readAsBytes();
      final uploadTask = ref.putData(bytes);

      final snapshot = await uploadTask.whenComplete(() {});
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return right(downloadUrl);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<Either<Failure, List<Organization>>> watchOrgs(
    String serviceId,
  ) async* {
    try {
      // Step 1: Listen to changes in orgServicesCollection for the given serviceId
      await for (final snapshot
          in _firestore
              .collection(_orgServicesCollection)
              .where('serviceId', isEqualTo: serviceId)
              .snapshots()) {
        if (snapshot.docs.isEmpty) {
          yield right([]); // No orgs linked
          continue;
        }

        // Step 2: Extract orgIds from snapshot
        final orgIds =
            snapshot.docs.map((doc) => doc['orgId'] as String).toSet();

        // Step 3: Fetch actual organization docs in batches (up to 10)
        final List<Organization> allOrgs = [];

        final batches = orgIds.chunked(10);
        for (final batch in batches) {
          final orgSnap =
              await _firestore
                  .collection(_organizationsCollection)
                  .where(FieldPath.documentId, whereIn: batch.toList())
                  .get();

          allOrgs.addAll(
            orgSnap.docs.map((doc) => Organization.fromJson(doc.data())),
          );
        }

        yield right(allOrgs);
      }
    } catch (e) {
      yield left(Failure(e.toString()));
    }
  }

  Stream<Either<Failure, int>> watchTotalServices() {
    try {
      return _firestore
          .collection(_donationServicesCollection)
          .snapshots()
          .map<Either<Failure, int>>((snapshot) {
            final total = snapshot.docs.length;
            return right(total);
          })
          .handleError((error) => left(Failure(error.toString())));
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Stream<Either<Failure, DonationService>> watchService(String id) {
    try {
      return _firestore
          .collection(_donationServicesCollection)
          .doc(id)
          .snapshots()
          .map<Either<Failure, DonationService>>((snapshot) {
            if (!snapshot.exists) {
              return left(Failure('Service not found'));
            }
            final service = DonationService.fromJson(snapshot.data()!);
            return right(service);
          })
          .handleError((error) => left(Failure(error.toString())));
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }
}
