part of 'end_threat_cubit.dart';

@freezed
class EndThreatState with _$EndThreatState {
  const factory EndThreatState.initial() = _Initial;
  const factory EndThreatState.loading() = _Loading;
  const factory EndThreatState.succeed() = _Succeed;
  const factory EndThreatState.failed(String message) = _Failed;
}
