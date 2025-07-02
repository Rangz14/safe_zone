part of 'upload_donation_service_icon_cubit.dart';

@freezed
class UploadDonationServiceIconState with _$UploadDonationServiceIconState {
  const factory UploadDonationServiceIconState.initial() = _Initial;
  const factory UploadDonationServiceIconState.uploading() = _Uploading;
  const factory UploadDonationServiceIconState.uploaded(String downloadUrl) =
      _Succeed;
  const factory UploadDonationServiceIconState.failed(String message) = _Failed;
}
