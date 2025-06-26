import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/failure/failure.dart';

@lazySingleton
class AuthService {
  final FirebaseAuth _firebaseAuth;
  AuthService(this._firebaseAuth);

  Future<void> signInWithPhone({
    required String phone,
    required Function(String uid) onSuccess,
    required Function(String message) onError,
    required Function(String verificationId, int? resendToken) onCodeSent,
    required Function(String verificationId) onCodeAutoRetrievalTimeout,
  }) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _firebaseAuth.signInWithCredential(credential);
        final user = _firebaseAuth.currentUser;
        if (user == null) {
          onError('Failed retrieving user');
          return;
        }
        onSuccess(user.uid);
      },
      verificationFailed: (FirebaseAuthException e) {
        onError(e.message ?? 'An error occurred');
      },
      codeSent: (String verificationId, int? resendToken) {
        onCodeSent(verificationId, resendToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        onCodeAutoRetrievalTimeout(verificationId);
      },
    );
  }

  Future<Either<Failure, String>> signInWithOTP({
    required String verificationId,
    required String smsCode,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );
      final user = userCredential.user;
      if (user != null) {
        return right(user.uid);
      }
      return left(const Failure('Failed retrieving user'));
    } on FirebaseAuthException catch (e) {
      return left(Failure(e.message ?? 'Failed to sign in'));
    }
  }

  Future<void> resendOTP({
    required String phone,
    required int? resendToken,
    required Function(String uid) onSuccess,
    required Function(String message) onError,
    required Function(String verificationId, int? resendToken) onCodeSent,
    required Function(String verificationId) onCodeAutoRetrievalTimeout,
  }) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phone,
      forceResendingToken: resendToken,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _firebaseAuth.signInWithCredential(credential);
        final user = _firebaseAuth.currentUser;
        if (user == null) {
          onError('Failed retrieving user');
          return;
        }
        onSuccess(user.uid);
      },
      verificationFailed: (FirebaseAuthException e) {
        onError(e.message ?? 'An error occurred');
      },
      codeSent: (String verificationId, int? resendToken) {
        onCodeSent(verificationId, resendToken);
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        onCodeAutoRetrievalTimeout(verificationId);
      },
    );
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  bool isSignedIn() {
    return _firebaseAuth.currentUser != null;
  }

  Either<Unit, String> getUid() {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      return right(user.uid);
    }
    return left(unit);
  }

  Either<Unit, String> getPhone() {
    final user = _firebaseAuth.currentUser;
    if (user != null && user.phoneNumber != null) {
      return right(user.phoneNumber!);
    }
    return left(unit);
  }
}
