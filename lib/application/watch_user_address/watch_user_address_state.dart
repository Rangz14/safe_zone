part of 'watch_user_address_cubit.dart';

@freezed
class WatchUserAddressState with _$WatchUserAddressState {
  const factory WatchUserAddressState.loading() = _Loading;
  const factory WatchUserAddressState.watching(SafeZoneUserAddress address) =
      _Watching;
  const factory WatchUserAddressState.failed() = _Failed;
}
