part of 'watch_org_cubit.dart';

@freezed
class WatchOrgState with _$WatchOrgState {
  const factory WatchOrgState.loading() = _Loading;
  const factory WatchOrgState.watching(Organization organization) = _Watching;
  const factory WatchOrgState.failed(String message) = _Failed;
}
