part of 'watch_donation_services_cubit.dart';

@freezed
class WatchDonationServicesState with _$WatchDonationServicesState {
  const factory WatchDonationServicesState.loading() = _Loading;
  const factory WatchDonationServicesState.watching(
    List<DonationService> services,
  ) = _Watching;
  const factory WatchDonationServicesState.failed(String message) = _Failed;
}
