import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/failure/failure.dart';

abstract class IAuthRepo {
  Future<void> signInWithPhone({
    required String phone,
    required Function(String uid) onSuccess,
    required Function(String message) onError,
    required Function(String verificationId, int? resendToken) onCodeSent,
    required Function(String verificationId) onCodeAutoRetrievalTimeout,
  });

  Future<Either<Failure, String>> signInWithOTP({
    required String verificationId,
    required String smsCode,
  });

  bool isSignedIn();

  Either<Unit, String> getUid();

  Future<void> signOut();
}
