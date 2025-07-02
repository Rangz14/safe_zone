import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';

part 'upload_threat_category_icon_state.dart';
part 'upload_threat_category_icon_cubit.freezed.dart';

@injectable
class UploadThreatCategoryIconCubit
    extends Cubit<UploadThreatCategoryIconState> {
  final IThreatRepo _threatRepo;
  UploadThreatCategoryIconCubit(this._threatRepo)
    : super(UploadThreatCategoryIconState.initial());

  Future<void> uploadIcon() async {
    emit(UploadThreatCategoryIconState.uploading());
    final failureOrDownloadUrl = await _threatRepo.uploadCategoryIcon();
    failureOrDownloadUrl.fold(
      (failure) => emit(UploadThreatCategoryIconState.failed(failure.message)),
      (downloadUrl) =>
          emit(UploadThreatCategoryIconState.uploaded(downloadUrl)),
    );
  }
}
