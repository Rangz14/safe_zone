part of 'update_org_address_cubit.dart';

@freezed
class UpdateOrgAddressState with _$UpdateOrgAddressState {
  const factory UpdateOrgAddressState.initial() = _Initial;
  const factory UpdateOrgAddressState.loading() = _Loading;
  const factory UpdateOrgAddressState.succeed() = _Succeed;
  const factory UpdateOrgAddressState.failed(String message) = _Failed;
}
