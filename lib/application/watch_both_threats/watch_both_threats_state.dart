part of 'watch_both_threats_cubit.dart';

@freezed
class WatchBothThreatsState with _$WatchBothThreatsState {
  const factory WatchBothThreatsState.loading() = _Loading;
  const factory WatchBothThreatsState.watching(
    List<SafeZoneThreat> ongoing,
    List<SafeZoneThreat> previous,
  ) = _Watching;
  const factory WatchBothThreatsState.failed(String message) = _Failed;
}
