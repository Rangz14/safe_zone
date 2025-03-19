import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/user/address/address.dart';
import 'package:safe_zone/domain/user/user.dart';

@lazySingleton
class UserService {
  final FirebaseFirestore _firestore;
  static const _usersCollection = 'users';
  static const _userAddressCollection = 'user_address';

  UserService(this._firestore);

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
}
