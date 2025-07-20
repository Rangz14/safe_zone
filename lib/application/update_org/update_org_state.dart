part of 'update_org_cubit.dart';

@freezed
class UpdateOrgState with _$UpdateOrgState {
  const factory UpdateOrgState.initial() = _Initial;
  const factory UpdateOrgState.loading() = _Loading;
  const factory UpdateOrgState.succeed() = _Succeed;
  const factory UpdateOrgState.failed(String message) = _Failed;
}
