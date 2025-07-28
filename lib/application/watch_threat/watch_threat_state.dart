part of 'watch_threat_cubit.dart';

@freezed
class WatchThreatState with _$WatchThreatState {
  const factory WatchThreatState.loading() = _Loading;
  const factory WatchThreatState.watching(SafeZoneThreat threat) = _Watching;
  const factory WatchThreatState.failed(String message) = _Failed;
}
