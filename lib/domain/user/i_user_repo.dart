import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/user/address/address.dart';
import 'package:safe_zone/domain/user/user.dart';

abstract class IUserRepo {
  Future<Either<Failure, bool>> isExist();
  Future<Either<Failure, SafeZoneUser>> getUser(String id);
  Future<Either<Failure, SafeZoneUser>> getCurrent();
  Future<Either<Failure, String>> uploadProfileImage(String id);
  Future<Either<Failure, SafeZoneUser>> updateUser(SafeZoneUser user);
  Future<Either<Failure, SafeZoneUserAddress>> updateAddress(
    String townId,
    String address,
  );
  Future<Either<Failure, SafeZoneUserAddress>> getAddress(String id);
}
