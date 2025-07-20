part of 'delete_service_cubit.dart';

@freezed
class DeleteServiceState with _$DeleteServiceState {
  const factory DeleteServiceState.initial() = _Initial;
  const factory DeleteServiceState.loading() = _Loading;
  const factory DeleteServiceState.succeed() = _Succeed;
  const factory DeleteServiceState.failed(String message) = _Failed;
}
