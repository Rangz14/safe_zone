part of 'watch_org_bank_details_cubit.dart';

@freezed
class WatchOrgBankDetailsState with _$WatchOrgBankDetailsState {
  const factory WatchOrgBankDetailsState.loading() = _Loading;
  const factory WatchOrgBankDetailsState.watching(
    OrganizationBankDetails bankDetails,
  ) = _Watching;
  const factory WatchOrgBankDetailsState.failed(String message) = _Failed;
}
