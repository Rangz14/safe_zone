part of 'upload_threat_category_icon_cubit.dart';

@freezed
class UploadThreatCategoryIconState with _$UploadThreatCategoryIconState {
  const factory UploadThreatCategoryIconState.initial() = _Initial;
  const factory UploadThreatCategoryIconState.uploading() = _Uploading;
  const factory UploadThreatCategoryIconState.uploaded(String downloadUrl) =
      _Uploaded;
  const factory UploadThreatCategoryIconState.failed(String message) = _Failed;
}
