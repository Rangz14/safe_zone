part of 'new_threat_category_cubit.dart';

@freezed
class NewThreatCategoryState with _$NewThreatCategoryState {
  const factory NewThreatCategoryState.initial() = _Initial;
  const factory NewThreatCategoryState.loading() = _Loading;
  const factory NewThreatCategoryState.succeed() = _Succeed;
  const factory NewThreatCategoryState.failed(String message) = _Failed;
}
