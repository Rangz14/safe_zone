import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';
import 'package:safe_zone/domain/user/user.dart';

part 'update_user_state.dart';
part 'update_user_cubit.freezed.dart';

@injectable
class UpdateUserCubit extends Cubit<UpdateUserState> {
  final IUserRepo _userRepo;
  UpdateUserCubit(this._userRepo) : super(UpdateUserState.initial());

  Future<void> updateUser(SafeZoneUser user) async {
    if (user.name.isEmpty) {
      emit(UpdateUserState.failed("Name cannot be empty"));
      return;
    }

    emit(UpdateUserState.loading());
    final failureOrSuccess = await _userRepo.updateUser(user);
    failureOrSuccess.fold(
      (failure) => emit(UpdateUserState.failed(failure.message)),
      (_) => emit(UpdateUserState.succeed()),
    );
  }
}
