import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';

part 'upload_donation_service_icon_state.dart';
part 'upload_donation_service_icon_cubit.freezed.dart';

@injectable
class UploadDonationServiceIconCubit
    extends Cubit<UploadDonationServiceIconState> {
  final IDonationServiceRepo _donationServiceRepo;
  UploadDonationServiceIconCubit(this._donationServiceRepo)
    : super(UploadDonationServiceIconState.initial());

  Future<void> uploadIcon() async {
    emit(UploadDonationServiceIconState.uploading());
    final failureOrDownloadUrl = await _donationServiceRepo.uploadIcon();
    failureOrDownloadUrl.fold(
      (failure) => emit(UploadDonationServiceIconState.failed(failure.message)),
      (downloadUrl) =>
          emit(UploadDonationServiceIconState.uploaded(downloadUrl)),
    );
  }
}
