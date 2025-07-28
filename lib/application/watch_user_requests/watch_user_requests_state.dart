part of 'watch_user_requests_cubit.dart';

@freezed
class WatchUserRequestsState with _$WatchUserRequestsState {
  const factory WatchUserRequestsState.loading() = _Loading;
  const factory WatchUserRequestsState.watching(
    List<DonationRequest> requests,
  ) = _Watching;
  const factory WatchUserRequestsState.failed(String message) = _Failed;
}
