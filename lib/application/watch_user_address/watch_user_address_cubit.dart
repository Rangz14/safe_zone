import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/user/address/address.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';

part 'watch_user_address_state.dart';
part 'watch_user_address_cubit.freezed.dart';

@injectable
class WatchUserAddressCubit extends Cubit<WatchUserAddressState> {
  final IUserRepo _userRepo;
  WatchUserAddressCubit(this._userRepo)
    : super(WatchUserAddressState.loading());

  Future<void> watch(String userId) async {
    emit(WatchUserAddressState.loading());
    _userRepo
        .watchAddress(userId)
        .listen(
          (either) => either.fold(
            (failure) => emit(WatchUserAddressState.failed()),
            (address) => emit(WatchUserAddressState.watching(address)),
          ),
        );
  }
}
