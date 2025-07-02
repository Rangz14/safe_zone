part of 'watch_threat_categories_cubit.dart';

@freezed
class WatchThreatCategoriesState with _$WatchThreatCategoriesState {
  const factory WatchThreatCategoriesState.loading() = _Loading;
  const factory WatchThreatCategoriesState.watching(
    List<ThreatCategory> categories,
  ) = _Watching;
  const factory WatchThreatCategoriesState.failed(String message) = _Failed;
}
