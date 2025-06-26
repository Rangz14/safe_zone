import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/threat/threat.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';

abstract class IThreatRepo {
  // Common
  Future<Either<Failure, List<ThreatCategory>>> getCategories();
  Future<Either<Failure, List<SafeZoneThreat>>> getThreatsByCategory(
    String categoryId,
  );
  Future<Either<Failure, List<SafeZoneThreat>>> getThreatsByCity(String city);
  Future<Either<Failure, List<SafeZoneThreat>>> getThreatsByState(String state);

  // Admin
  // ThreadCategory
  Future<Either<Failure, ThreatCategory>> createCategory(
    ThreatCategory category,
  );
  Future<Either<Failure, ThreatCategory>> updateCategory(
    ThreatCategory category,
  );

  // Thread
  Future<Either<Failure, SafeZoneThreat>> createThreat(SafeZoneThreat threat);
  Future<Either<Failure, SafeZoneThreat>> updateThreat(SafeZoneThreat threat);
  Future<Either<Failure, SafeZoneThreat>> end(String threatId);

  //
}
