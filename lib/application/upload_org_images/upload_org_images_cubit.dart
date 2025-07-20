import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';

part 'upload_org_images_state.dart';
part 'upload_org_images_cubit.freezed.dart';

@injectable
class UploadOrgImagesCubit extends Cubit<UploadOrgImagesState> {
  final IOrganizationRepo _organizationRepo;
  UploadOrgImagesCubit(this._organizationRepo)
    : super(UploadOrgImagesState.initial());

  Future<void> upload(UploadImageType type) async {
    if (type == UploadImageType.logo) {
      await _uploadLogo();
    } else if (type == UploadImageType.cover) {
      await _uploadCover();
    }
  }

  Future<void> _uploadLogo() async {
    emit(const UploadOrgImagesState.uploading());
    final result = await _organizationRepo.uploadLogo();
    result.fold(
      (failure) => emit(UploadOrgImagesState.failed(failure.message)),
      (downloadUrl) => emit(UploadOrgImagesState.uploaded(downloadUrl)),
    );
  }

  Future<void> _uploadCover() async {
    emit(const UploadOrgImagesState.uploading());
    final result = await _organizationRepo.uploadCover();
    result.fold(
      (failure) => emit(UploadOrgImagesState.failed(failure.message)),
      (downloadUrl) => emit(UploadOrgImagesState.uploaded(downloadUrl)),
    );
  }
}
