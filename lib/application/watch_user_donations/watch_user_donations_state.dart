part of 'watch_user_donations_cubit.dart';

@freezed
class WatchUserDonationsState with _$WatchUserDonationsState {
  const factory WatchUserDonationsState.loading() = _Loading;
  const factory WatchUserDonationsState.watching(List<Donation> donations) =
      _Watching;
  const factory WatchUserDonationsState.failed(String message) = _Failed;
}
