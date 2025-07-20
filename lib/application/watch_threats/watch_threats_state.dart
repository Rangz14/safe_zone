part of 'watch_threats_cubit.dart';

@freezed
class WatchThreatsState with _$WatchThreatsState {
  const factory WatchThreatsState.loading() = _Loading;
  const factory WatchThreatsState.watching(List<SafeZoneThreat> threats) =
      _Watching;
  const factory WatchThreatsState.failed(String message) = _Failed;
}
