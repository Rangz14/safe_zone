part of 'watch_orgs_cubit.dart';

@freezed
class WatchOrgsState with _$WatchOrgsState {
  const factory WatchOrgsState.loading() = _Loading;
  const factory WatchOrgsState.watching(List<Organization> orgs) = _Watching;
  const factory WatchOrgsState.failed(String message) = _Failed;
}
