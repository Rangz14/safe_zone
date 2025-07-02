part of 'watch_admin_stats_cubit.dart';

@freezed
class WatchAdminStatsState with _$WatchAdminStatsState {
  const factory WatchAdminStatsState.loading() = _Loading;
  const factory WatchAdminStatsState.watching(int value, String title) =
      _Watching;
  const factory WatchAdminStatsState.failed(String message) = _Failed;
}
