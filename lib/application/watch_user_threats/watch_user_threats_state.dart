part of 'watch_user_threats_cubit.dart';

@freezed
class WatchUserThreatsState with _$WatchUserThreatsState {
  const factory WatchUserThreatsState.loading() = _Loading;
  const factory WatchUserThreatsState.watching(List<SafeZoneThreat> threats) =
      _Watching;
  const factory WatchUserThreatsState.failed(String message) = _Failed;
}
