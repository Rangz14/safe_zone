part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticatedUser({required SafeZoneUser user}) =
      _AuthenticatedUser;
  const factory AuthState.authenticatedOrg({required Organization org}) =
      _AuthenticatedOrg;
  const factory AuthState.authenticatedAdmin() = _AuthenticatedAdmin;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.unAuthenticated() = _Unauthenticated;
  const factory AuthState.requireRegUser(String uid, String phone) =
      _RequireRegUser;
  const factory AuthState.failed({required String message}) = _Failed;
}
