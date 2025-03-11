import 'package:dartz/dartz.dart';
import 'package:safe_zone/domain/auth/i_auth_repo.dart';
import 'package:safe_zone/domain/failure/failure.dart';
import 'package:safe_zone/infrastructure/services/auth_service.dart';

class AuthRepo implements IAuthRepo {
  final AuthService _authService;
  AuthRepo(this._authService);

  @override
  Either<Unit, String> getUid() => _authService.getUid();

  @override
  bool isSignedIn() => _authService.isSignedIn();

  @override
  Future<Either<Failure, String>> signInWithOTP({
    required String verificationId,
    required String smsCode,
  }) => _authService.signInWithOTP(
    verificationId: verificationId,
    smsCode: smsCode,
  );

  @override
  Future<void> signInWithPhone({
    required String phone,
    required Function(String uid) onSuccess,
    required Function(String message) onError,
    required Function(String verificationId, int? resendToken) onCodeSent,
    required Function(String verificationId) onCodeAutoRetrievalTimeout,
  }) => _authService.signInWithPhone(
    phone: phone,
    onSuccess: onSuccess,
    onError: onError,
    onCodeSent: onCodeSent,
    onCodeAutoRetrievalTimeout: onCodeAutoRetrievalTimeout,
  );

  @override
  Future<void> signOut() => _authService.signOut();
}
