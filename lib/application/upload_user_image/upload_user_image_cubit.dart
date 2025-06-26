import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';

part 'upload_user_image_state.dart';
part 'upload_user_image_cubit.freezed.dart';

@injectable
class UploadUserImageCubit extends Cubit<UploadUserImageState> {
  final IUserRepo _userRepo;
  UploadUserImageCubit(this._userRepo) : super(UploadUserImageState.initial());

  Future<void> uploadUserImage(String userId) async {
    emit(UploadUserImageState.uploading());
    final failureOrSuccess = await _userRepo.uploadProfileImage(userId);
    failureOrSuccess.fold(
      (failure) => emit(UploadUserImageState.failed(failure.message)),
      (user) =>
          emit(UploadUserImageState.uploaded(failureOrSuccess.getOrCrash())),
    );
  }
}
