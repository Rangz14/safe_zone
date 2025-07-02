import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';

abstract class IThreatRepo {
  // Common
  Stream<Either<Failure, List<SafeZoneThreat>>> watchAll();
  Future<Either<Failure, List<ThreatCategory>>> getCategories();
  Stream<Either<Failure, List<ThreatCategory>>> watchCategories();
  Stream<Either<Failure, ThreatCategory>> watchCategory(String categoryId);

  // User
  Stream<Either<Failure, List<SafeZoneThreat>>> watchThreatsByCurrentUserTown();

  // Admin
  // ThreatCategory
  Future<Either<Failure, Unit>> createCategory(ThreatCategory category);
  Future<Either<Failure, Unit>> deleteCategory(String categoryId);

  Future<Either<Failure, String>> uploadCategoryIcon();

  // Threat
  Future<Either<Failure, Unit>> createThreat(SafeZoneThreat threat);
  Future<Either<Failure, Unit>> end(SafeZoneThreat threat);

  Stream<Either<Failure, int>> watchTotalCategories();
}
