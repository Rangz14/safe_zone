part of 'update_bank_details_cubit.dart';

@freezed
class UpdateBankDetailsState with _$UpdateBankDetailsState {
  const factory UpdateBankDetailsState.initial() = _Initial;
  const factory UpdateBankDetailsState.loading() = _Loading;
  const factory UpdateBankDetailsState.succeed() = _Succeed;
  const factory UpdateBankDetailsState.failed(String message) = _Failed;
}
