import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/iterable_x.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/domain/organization/organization.dart';
import 'package:safe_zone/domain/organization/rating/rating.dart';
import 'package:safe_zone/domain/organization_service/organization_service.dart';
import 'package:safe_zone/domain/service/service.dart';

@lazySingleton
class OrgService {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final ImagePicker _imagePicker;
  static const _orgsCollection = 'organizations';
  static const _orgAddressesCollection = 'org_addresses';
  static const _orgBankDetailsCollection = 'org_bank_details';
  static const _orgRatingsCollection = 'org_ratings';
  static const _orgServicesCollection = 'org_services';
  static const _donationServicesCollection = 'donation_services';

  OrgService(this._firestore, this._storage, this._imagePicker);

  // Organization
  Future<Either<Failure, bool>> isExist(String id) async {
    try {
      final snapshot =
          await _firestore.collection(_orgsCollection).doc(id).get();
      return right(snapshot.exists);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> updateOrganization(Organization org) async {
    try {
      final doc = _firestore.collection(_orgsCollection).doc(org.id);
      await doc.set(org.toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // watch
  Stream<Either<Failure, Organization>> watch(String id) {
    try {
      return _firestore
          .collection(_orgsCollection)
          .doc(id)
          .snapshots()
          .map<Either<Failure, Organization>>((snapshot) {
            if (snapshot.exists) {
              final org = Organization.fromJson(snapshot.data()!);
              return right(org);
            } else {
              return left(Failure('Organization not found'));
            }
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  // watch all organizations
  Stream<Either<Failure, List<Organization>>> watchAll() {
    try {
      return _firestore
          .collection(_orgsCollection)
          .snapshots()
          .map<Either<Failure, List<Organization>>>((snapshot) {
            final organizations =
                snapshot.docs
                    .map((doc) => Organization.fromJson(doc.data()))
                    .toList();
            return right(organizations);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  // watch org address
  Stream<Either<Failure, OrganizationAddress>> watchAddress(String id) {
    try {
      return _firestore
          .collection(_orgAddressesCollection)
          .doc(id)
          .snapshots()
          .map<Either<Failure, OrganizationAddress>>((snapshot) {
            if (snapshot.exists) {
              final address = OrganizationAddress.fromJson(snapshot.data()!);
              return right(address);
            } else {
              return left(Failure('Organization address not found'));
            }
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  // watch org bank details
  Stream<Either<Failure, OrganizationBankDetails>> watchBankDetails(String id) {
    try {
      return _firestore
          .collection(_orgBankDetailsCollection)
          .doc(id)
          .snapshots()
          .map<Either<Failure, OrganizationBankDetails>>((snapshot) {
            if (snapshot.exists) {
              final bankDetails = OrganizationBankDetails.fromJson(
                snapshot.data()!,
              );
              return right(bankDetails);
            } else {
              return left(Failure('Organization bank details not found'));
            }
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  // watch org ratings
  Stream<Either<Failure, List<OrganizationRating>>> watchRatings(String orgId) {
    try {
      return _firestore
          .collection(_orgRatingsCollection)
          .where('organizationId', isEqualTo: orgId)
          .snapshots()
          .map<Either<Failure, List<OrganizationRating>>>((snapshot) {
            final ratings =
                snapshot.docs
                    .map((doc) => OrganizationRating.fromJson(doc.data()))
                    .toList();
            return right(ratings);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  // This implementation is wrong. this is same as we did before but its opposite. this time we get orgId and should return its services
  Stream<Either<Failure, List<DonationService>>> watchServices(
    String orgId,
  ) async* {
    try {
      // Step 1: Listen to real-time changes in org-services collection for this org
      await for (final snapshot
          in _firestore
              .collection(_orgServicesCollection)
              .where('orgId', isEqualTo: orgId)
              .snapshots()) {
        if (snapshot.docs.isEmpty) {
          yield right([]);
          continue;
        }

        // Step 2: Extract serviceIds
        final serviceIds =
            snapshot.docs.map((doc) => doc['serviceId'] as String).toSet();

        // Step 3: Fetch actual service data in batches
        final List<DonationService> services = [];

        final batches = serviceIds.chunked(
          10,
        ); // still needed because whereIn max = 10

        for (final batch in batches) {
          final serviceSnap =
              await _firestore
                  .collection(_donationServicesCollection)
                  .where(FieldPath.documentId, whereIn: batch)
                  .get();

          services.addAll(
            serviceSnap.docs.map((doc) => DonationService.fromJson(doc.data())),
          );
        }

        // Step 4: Emit the final result
        yield right(services);
      }
    } catch (e) {
      yield left(Failure(e.toString()));
    }
  }

  // Update Address
  Future<Either<Failure, Unit>> updateAddress(
    OrganizationAddress address,
  ) async {
    try {
      final doc = _firestore
          .collection(_orgAddressesCollection)
          .doc(address.organizationId);
      await doc.set(address.toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // Update Bank Details
  Future<Either<Failure, Unit>> updateBankDetails(
    OrganizationBankDetails bankDetails,
  ) async {
    try {
      final doc = _firestore
          .collection(_orgBankDetailsCollection)
          .doc(bankDetails.organizationId);
      await doc.set(bankDetails.toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // Create Org service
  Future<Either<Failure, Unit>> createOrgService(
    OrganizationService service,
  ) async {
    try {
      final doc = _firestore.collection(_orgServicesCollection).doc();
      await doc.set(service.copyWith(id: doc.id).toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // Remove Organization Service
  Future<Either<Failure, Unit>> removeOrgService(
    String uid,
    String serviceId,
  ) async {
    try {
      final query = _firestore
          .collection(_orgServicesCollection)
          .where('orgId', isEqualTo: uid)
          .where('serviceId', isEqualTo: serviceId);

      final snapshot = await query.get();
      if (snapshot.docs.isEmpty) {
        return left(Failure('Service not found for this organization'));
      }

      for (final doc in snapshot.docs) {
        await doc.reference.delete();
      }
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // Add Organization Rating
  Future<Either<Failure, Unit>> createRating(OrganizationRating rating) async {
    try {
      final doc = _firestore.collection(_orgRatingsCollection).doc();
      await doc.set(rating.copyWith(id: doc.id).toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // Upload Logo

  Future<Either<Failure, String>> uploadLogo(String organizationId) async {
    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 600,
      );
      if (image == null) {
        return left(Failure('No image selected'));
      }
      final ref = _storage.ref().child(
        'organization_logos/$organizationId.jpg',
      );
      final bytes = await image.readAsBytes();
      final uploadTask = ref.putData(bytes);

      final snapshot = await uploadTask.whenComplete(() {});
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return right(downloadUrl);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  // Upload Cover Image: Web
  Future<Either<Failure, String>> uploadCover(String organizationId) async {
    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 600,
      );
      if (image == null) {
        return left(Failure('No image selected'));
      }
      final ref = _storage.ref().child(
        'organization_covers/$organizationId.jpg',
      );
      final bytes = await image.readAsBytes();
      final uploadTask = ref.putData(bytes);

      final snapshot = await uploadTask.whenComplete(() {});
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return right(downloadUrl);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<Either<Failure, int>> watchTotalOrgs() {
    try {
      return _firestore
          .collection(_orgsCollection)
          .snapshots()
          .map<Either<Failure, int>>((snapshot) {
            return right(snapshot.docs.length);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Stream<Either<Failure, bool>> watchServiceIsSelectedOrg(
    String serviceId,
    String orCrash,
  ) {
    try {
      return _firestore
          .collection(_orgServicesCollection)
          .where('serviceId', isEqualTo: serviceId)
          .where('orgId', isEqualTo: orCrash)
          .snapshots()
          .map<Either<Failure, bool>>((snapshot) {
            return right(snapshot.docs.isNotEmpty);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }
}
