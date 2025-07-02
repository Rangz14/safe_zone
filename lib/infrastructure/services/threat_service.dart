import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';

@lazySingleton
class ThreatService {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final ImagePicker _imagePicker;
  static const String threatsCollectionName = 'threats';
  static const String categoriesCollectionName = 'threat_categories';

  ThreatService(this._firestore, this._storage, this._imagePicker);

  Stream<Either<Failure, List<SafeZoneThreat>>> watchAll() {
    try {
      return _firestore
          .collection(threatsCollectionName)
          .snapshots()
          .map<Either<Failure, List<SafeZoneThreat>>>((snapshot) {
            final threats =
                snapshot.docs
                    .map((doc) => SafeZoneThreat.fromJson(doc.data()))
                    .toList();
            return right(threats);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Future<Either<Failure, List<ThreatCategory>>> getCategories() async {
    try {
      final snapshot =
          await _firestore.collection(categoriesCollectionName).get();
      final categories =
          snapshot.docs
              .map((doc) => ThreatCategory.fromJson(doc.data()))
              .toList();
      return right(categories);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<Either<Failure, List<ThreatCategory>>> watchCategories() {
    try {
      return _firestore
          .collection(categoriesCollectionName)
          .snapshots()
          .map<Either<Failure, List<ThreatCategory>>>((snapshot) {
            final categories =
                snapshot.docs
                    .map((doc) => ThreatCategory.fromJson(doc.data()))
                    .toList();
            return right(categories);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Future<Either<Failure, String>> uploadCategoryIcon() async {
    try {
      final image = await _imagePicker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        return left(Failure('No image selected'));
      }

      final fileName = '${DateTime.now().millisecondsSinceEpoch}.png';
      final ref = _storage.ref().child('threat_category_icons/$fileName');
      final bytes = await image.readAsBytes();
      final uploadTask = ref.putData(bytes);
      final snapshot = await uploadTask.whenComplete(() {});
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return right(downloadUrl);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> createCategory(ThreatCategory category) async {
    try {
      final doc = _firestore.collection(categoriesCollectionName).doc();
      final categoryWithId = category.copyWith(id: doc.id);
      await doc.set(categoryWithId.toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> deleteCategory(String categoryId) async {
    try {
      await _firestore
          .collection(categoriesCollectionName)
          .doc(categoryId)
          .delete();
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> createThreat(SafeZoneThreat threat) async {
    try {
      final doc = _firestore.collection(threatsCollectionName).doc();
      final threatWithId = threat.copyWith(id: doc.id);
      await doc.set(threatWithId.toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, Unit>> update(SafeZoneThreat threat) async {
    try {
      await _firestore
          .collection(threatsCollectionName)
          .doc(threat.id)
          .update(threat.toJson());
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<Either<Failure, List<SafeZoneThreat>>> watchThreats() {
    try {
      return _firestore
          .collection(threatsCollectionName)
          .snapshots()
          .map<Either<Failure, List<SafeZoneThreat>>>((snapshot) {
            final threats =
                snapshot.docs
                    .map((doc) => SafeZoneThreat.fromJson(doc.data()))
                    .toList();
            return right(threats);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Stream<Either<Failure, List<SafeZoneThreat>>> watchThreatsByTown(
    String townId,
  ) {
    try {
      return _firestore
          .collection(threatsCollectionName)
          .where('townId', isEqualTo: townId)
          .snapshots()
          .map<Either<Failure, List<SafeZoneThreat>>>((snapshot) {
            final threats =
                snapshot.docs
                    .map((doc) => SafeZoneThreat.fromJson(doc.data()))
                    .toList();
            return right(threats);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Stream<Either<Failure, ThreatCategory>> watchCategory(String categoryId) {
    try {
      return _firestore
          .collection(categoriesCollectionName)
          .doc(categoryId)
          .snapshots()
          .map<Either<Failure, ThreatCategory>>((snapshot) {
            if (!snapshot.exists) {
              return left(Failure('Category not found'));
            }
            final category = ThreatCategory.fromJson(snapshot.data()!);
            return right(category);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Stream<Either<Failure, int>> watchTotalCategories() {
    try {
      return _firestore
          .collection(categoriesCollectionName)
          .snapshots()
          .map<Either<Failure, int>>((snapshot) {
            final totalCategories = snapshot.docs.length;
            return right(totalCategories);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }
}
