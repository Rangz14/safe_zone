part of 'watch_threat_category_cubit.dart';

@freezed
class WatchThreatCategoryState with _$WatchThreatCategoryState {
  const factory WatchThreatCategoryState.loading() = _Loading;
  const factory WatchThreatCategoryState.watching(ThreatCategory category) =
      _Watching;
  const factory WatchThreatCategoryState.failed(String message) = _Failed;
}
