part of 'upload_user_image_cubit.dart';

@freezed
class UploadUserImageState with _$UploadUserImageState {
  const factory UploadUserImageState.initial() = _Initial;
  const factory UploadUserImageState.uploading() = _Uploading;
  const factory UploadUserImageState.uploaded(String downloadUrl) = _Uploaded;
  const factory UploadUserImageState.failed(String message) = _Failed;
}
