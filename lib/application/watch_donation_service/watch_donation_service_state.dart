part of 'watch_donation_service_cubit.dart';

@freezed
class WatchDonationServiceState with _$WatchDonationServiceState {
  const factory WatchDonationServiceState.loading() = _Loading;
  const factory WatchDonationServiceState.watching(DonationService service) =
      _Watching;
  const factory WatchDonationServiceState.failed(String message) = _Failed;
}
