part of 'watch_org_ratings_cubit.dart';

@freezed
class WatchOrgRatingsState with _$WatchOrgRatingsState {
  const factory WatchOrgRatingsState.loading() = _Loading;
  const factory WatchOrgRatingsState.watching(
    List<OrganizationRating> ratings,
  ) = _Watching;
  const factory WatchOrgRatingsState.failed(String message) = _Failed;
}
