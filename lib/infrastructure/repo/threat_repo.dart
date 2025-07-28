import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';
import 'package:safe_zone/infrastructure/services/threat_service.dart';

@LazySingleton(as: IThreatRepo)
class ThreatRepo implements IThreatRepo {
  final ThreatService _threatService;
  final IUserRepo _userRepo;

  ThreatRepo(this._threatService, this._userRepo);
  @override
  Future<Either<Failure, Unit>> createCategory(ThreatCategory category) =>
      _threatService.createCategory(category);

  @override
  Future<Either<Failure, Unit>> createThreat(SafeZoneThreat threat) =>
      _threatService.createThreat(threat);

  @override
  Future<Either<Failure, Unit>> deleteCategory(String categoryId) =>
      _threatService.deleteCategory(categoryId);

  @override
  Future<Either<Failure, Unit>> end(SafeZoneThreat threat) {
    final endedThreat = threat.copyWith(
      endedAt: DateTime.now().millisecondsSinceEpoch,
    );
    return _threatService.update(endedThreat);
  }

  @override
  Future<Either<Failure, List<ThreatCategory>>> getCategories() =>
      _threatService.getCategories();

  @override
  Future<Either<Failure, String>> uploadCategoryIcon() =>
      _threatService.uploadCategoryIcon();

  @override
  Stream<Either<Failure, List<ThreatCategory>>> watchCategories() =>
      _threatService.watchCategories();

  @override
  Stream<Either<Failure, List<SafeZoneThreat>>> watchAll() =>
      _threatService.watchAll();

  @override
  Stream<Either<Failure, ThreatCategory>> watchCategory(String categoryId) =>
      _threatService.watchCategory(categoryId);

  @override
  Stream<Either<Failure, int>> watchTotalCategories() =>
      _threatService.watchTotalCategories();

  @override
  Stream<Either<Failure, List<SafeZoneThreat>>> watchByCurrentUser() async* {
    final failureOrAddress = await _userRepo.getCurrentAddress();
    if (failureOrAddress.isLeft()) {
      yield left(failureOrAddress.getLeft());
      return;
    }
    final address = failureOrAddress.getOrCrash();
    yield* _threatService.watchThreatsByTown(address.townId);
  }

  @override
  Stream<Either<Failure, SafeZoneThreat>> watchThreat(String id) =>
      _threatService.watchThreat(id);
}
