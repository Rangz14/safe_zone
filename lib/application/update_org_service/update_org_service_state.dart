part of 'update_org_service_cubit.dart';

@freezed
class UpdateOrgServiceState with _$UpdateOrgServiceState {
  const factory UpdateOrgServiceState.initial() = _Initial;
  const factory UpdateOrgServiceState.loading() = Loading;
  const factory UpdateOrgServiceState.succeed() = _Succeed;
  const factory UpdateOrgServiceState.failed(String message) = _Failed;
}
