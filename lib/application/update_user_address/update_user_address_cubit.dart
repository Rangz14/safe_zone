import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';

part 'update_user_address_state.dart';
part 'update_user_address_cubit.freezed.dart';

@injectable
class UpdateUserAddressCubit extends Cubit<UpdateUserAddressState> {
  final IUserRepo _userRepo;
  UpdateUserAddressCubit(this._userRepo)
    : super(UpdateUserAddressState.initial());

  Future<void> updateAddress(String townId, String address) async {
    emit(UpdateUserAddressState.loading());

    if (townId.isEmpty) {
      emit(UpdateUserAddressState.failed("Please select a town"));
      return;
    }

    if (address.isEmpty) {
      emit(UpdateUserAddressState.failed("Please enter your address"));
      return;
    }

    final failureOrSuccess = await _userRepo.updateAddress(townId, address);
    failureOrSuccess.fold(
      (failure) => emit(UpdateUserAddressState.failed(failure.message)),
      (_) => emit(UpdateUserAddressState.loaded()),
    );
  }
}
