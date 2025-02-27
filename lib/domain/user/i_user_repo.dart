import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/user/address/address.dart';
import 'package:safe_zone/domain/user/user.dart';

abstract class IUserRepo {
  Future<Either<Failure, SafeZoneUser>> getUser(String id);
  Future<Either<Failure, SafeZoneUser>> getCurrent();
  Future<Either<Failure, SafeZoneUser>> createUser(SafeZoneUser user);
  Future<Either<Failure, SafeZoneUser>> updateUser(SafeZoneUser user);
  Future<Either<Failure, SafeZoneUserAddress>> createAddress(
    SafeZoneUserAddress address,
  );
  Future<Either<Failure, SafeZoneUserAddress>> updateAddress(
    SafeZoneUserAddress address,
  );
  Future<Either<Failure, SafeZoneUserAddress>> getAddress(String id);
}
