import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/user/address/address.dart';
import 'package:safe_zone/domain/user/user.dart';

@lazySingleton
class UserService {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;
  final ImagePicker _imagePicker;
  static const _usersCollection = 'users';
  static const _userAddressCollection = 'user_addresses';

  UserService(this._firestore, this._storage, this._imagePicker);

  Future<Either<Failure, SafeZoneUserAddress>> createAddress(
    SafeZoneUserAddress address,
  ) async {
    try {
      final doc = _firestore
          .collection(_userAddressCollection)
          .doc(address.userId);
      await doc.set(address.toJson());
      return right(address);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, SafeZoneUser>> createUser(SafeZoneUser user) async {
    try {
      final doc = _firestore.collection(_usersCollection).doc(user.id);
      await doc.set(user.toJson());
      return right(user);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, String>> uploadProfileImage(String id) async {
    try {
      final image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 600,
      );
      final ref = _storage.ref().child('profile_images/$id.jpg');
      if (image == null) {
        return left(Failure('No image selected'));
      }
      final uploadTask = ref.putFile(File(image.path));
      final snapshot = await uploadTask.whenComplete(() {});
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return right(downloadUrl);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, SafeZoneUserAddress>> getAddress(String id) async {
    try {
      final doc =
          await _firestore.collection(_userAddressCollection).doc(id).get();
      if (doc.exists) {
        return right(SafeZoneUserAddress.fromJson(doc.data()!));
      }
      return left(Failure('Address not found'));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, SafeZoneUser>> getUser(String id) async {
    try {
      final doc = await _firestore.collection(_usersCollection).doc(id).get();
      if (doc.exists) {
        return right(SafeZoneUser.fromJson(doc.data()!));
      }
      return left(Failure('User not found'));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, bool>> isExist(String id) async {
    try {
      final doc = await _firestore.collection(_usersCollection).doc(id).get();
      if (doc.exists) {
        return right(true);
      }
      return right(false);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<Either<Failure, List<SafeZoneUser>>> watchAll() {
    try {
      return _firestore
          .collection(_usersCollection)
          .snapshots()
          .map<Either<Failure, List<SafeZoneUser>>>((snapshot) {
            final users =
                snapshot.docs
                    .map((doc) => SafeZoneUser.fromJson(doc.data()))
                    .toList();
            return right(users);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Stream<Either<Failure, SafeZoneUserAddress>> watchAddress(String id) {
    try {
      return _firestore
          .collection(_userAddressCollection)
          .doc(id)
          .snapshots()
          .map<Either<Failure, SafeZoneUserAddress>>((snapshot) {
            if (snapshot.exists) {
              return right(SafeZoneUserAddress.fromJson(snapshot.data()!));
            } else {
              return left(Failure('Address not found'));
            }
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }

  Stream<Either<Failure, int>> watchTotalUsers() {
    try {
      return _firestore
          .collection(_usersCollection)
          .snapshots()
          .map<Either<Failure, int>>((snapshot) {
            final totalUsers = snapshot.docs.length;
            return right(totalUsers);
          })
          .handleError((error) {
            return left(Failure(error.toString()));
          });
    } catch (e) {
      return Stream.value(left(Failure(e.toString())));
    }
  }
}
