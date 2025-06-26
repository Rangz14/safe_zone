part of 'update_user_address_cubit.dart';

@freezed
class UpdateUserAddressState with _$UpdateUserAddressState {
  const factory UpdateUserAddressState.initial() = _Initial;
  const factory UpdateUserAddressState.loading() = _Loading;
  const factory UpdateUserAddressState.loaded() = _Loaded;
  const factory UpdateUserAddressState.failed(String message) = _Failed;
}
