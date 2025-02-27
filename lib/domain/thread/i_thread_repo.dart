import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/domain/thread/thread.dart';
import 'package:safe_zone/domain/thread/thread_category/thread_category.dart';

abstract class IThreadRepo {
  Future<Either<Failure, SafeZoneThread>> getThread(String id);
  Future<Either<Failure, List<SafeZoneThread>>> getThreads();
  Future<Either<Failure, List<SafeZoneThread>>> getAllThreadsForUserState();
  Future<Either<Failure, List<SafeZoneThread>>> getAllThreadsForUserCity();
  Future<Either<Failure, List<SafeZoneThread>>> getActiveThreadsForUserState();
  Future<Either<Failure, List<SafeZoneThread>>> getActiveThreadsForUserCity();
  Future<Either<Failure, ThreadCategory>> getThreadCategory(String id);
  Future<Either<Failure, List<ThreadCategory>>> getThreadCategories();
}
