part of 'delete_threat_category_cubit.dart';

@freezed
class DeleteThreatCategoryState with _$DeleteThreatCategoryState {
  const factory DeleteThreatCategoryState.initial() = _Initial;
  const factory DeleteThreatCategoryState.loading() = _Loading;
  const factory DeleteThreatCategoryState.succeed() = _Succeed;
  const factory DeleteThreatCategoryState.failed(String message) = _Failed;
}
