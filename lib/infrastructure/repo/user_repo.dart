import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/user/address/address.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';
import 'package:safe_zone/domain/user/user.dart';
import 'package:safe_zone/infrastructure/services/auth_service.dart';
import 'package:safe_zone/infrastructure/services/user_service.dart';

@LazySingleton(as: IUserRepo)
class UserRepo implements IUserRepo {
  final UserService _userService;
  final AuthService _authService;

  UserRepo(this._userService, this._authService);

  @override
  Future<Either<Failure, SafeZoneUserAddress>> updateAddress(
    String townId,
    String address,
  ) async {
    final unitOrUid = _authService.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    final userId = unitOrUid.getOrCrash();
    final safeZoneAddress = SafeZoneUserAddress.empty().copyWith(
      userId: userId,
      townId: townId,
      address: address,
    );
    return _userService.createAddress(safeZoneAddress);
  }

  @override
  Future<Either<Failure, SafeZoneUser>> updateUser(SafeZoneUser user) =>
      _userService.createUser(user);

  @override
  Future<Either<Failure, SafeZoneUserAddress>> getAddress(String id) =>
      _userService.getAddress(id);

  @override
  Future<Either<Failure, SafeZoneUser>> getCurrent() async {
    final unitOrUid = _authService.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    final failureOrUser = await _userService.getUser(unitOrUid.getOrCrash());
    return failureOrUser;
  }

  @override
  Future<Either<Failure, SafeZoneUser>> getUser(String id) =>
      _userService.getUser(id);

  @override
  Future<Either<Failure, bool>> isExist() async {
    final unitOrUid = _authService.getUid();
    if (unitOrUid.isLeft()) {
      return left(const Failure('User not signed in'));
    }
    return _userService.isExist(unitOrUid.getOrCrash());
  }

  @override
  Future<Either<Failure, String>> uploadProfileImage(String id) =>
      _userService.uploadProfileImage(id);
}
