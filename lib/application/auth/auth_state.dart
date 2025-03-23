part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({required SafeZoneUser user}) =
      _Authenticated;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.unAuthenticated() = _Unauthenticated;
  const factory AuthState.requireRegistration() = _RequireRegistration;
  const factory AuthState.failed({required String message}) = _Failed;
}
