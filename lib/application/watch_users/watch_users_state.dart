part of 'watch_users_cubit.dart';

@freezed
class WatchUsersState with _$WatchUsersState {
  const factory WatchUsersState.loading() = _Loading;
  const factory WatchUsersState.watching(List<SafeZoneUser> users) = _Watching;
  const factory WatchUsersState.failed(String message) = _Failed;
}
