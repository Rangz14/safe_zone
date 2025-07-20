part of 'upload_org_images_cubit.dart';

@freezed
class UploadOrgImagesState with _$UploadOrgImagesState {
  const factory UploadOrgImagesState.initial() = _Initial;
  const factory UploadOrgImagesState.uploading() = _Uploading;
  const factory UploadOrgImagesState.uploaded(String downloadUrl) = _Uploaded;
  const factory UploadOrgImagesState.failed(String message) = _Failed;
}
