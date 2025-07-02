part of 'watch_org_address_cubit.dart';

@freezed
class WatchOrgAddressState with _$WatchOrgAddressState {
  const factory WatchOrgAddressState.loading() = _Loading;
  const factory WatchOrgAddressState.watching(OrganizationAddress address) =
      _Watching;
  const factory WatchOrgAddressState.failed(String message) = _Failed;
}
