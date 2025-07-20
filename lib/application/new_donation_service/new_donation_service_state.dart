part of 'new_donation_service_cubit.dart';

@freezed
class NewDonationServiceState with _$NewDonationServiceState {
  const factory NewDonationServiceState.initial() = _Initial;
  const factory NewDonationServiceState.loading() = _Loading;
  const factory NewDonationServiceState.succeed() = _Succeed;
  const factory NewDonationServiceState.failed(String message) = _Failed;
}
