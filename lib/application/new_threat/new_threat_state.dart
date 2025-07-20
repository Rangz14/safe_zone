part of 'new_threat_cubit.dart';

@freezed
class NewThreatState with _$NewThreatState {
  const factory NewThreatState.initial() = _Initial;
  const factory NewThreatState.loading() = _Loading;
  const factory NewThreatState.succeed() = _Succeed;
  const factory NewThreatState.failed(String message) = _Failed;
}
