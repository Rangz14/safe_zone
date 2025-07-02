import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/user/i_user_repo.dart';
import 'package:safe_zone/domain/user/user.dart';

part 'watch_users_state.dart';
part 'watch_users_cubit.freezed.dart';

@injectable
class WatchUsersCubit extends Cubit<WatchUsersState> {
  final IUserRepo _userRepo;
  WatchUsersCubit(this._userRepo) : super(WatchUsersState.loading());

  Future<void> watchAll() async {
    emit(const WatchUsersState.loading());
    _userRepo.watchAll().listen(
      (either) => either.fold(
        (failure) => emit(WatchUsersState.failed(failure.message)),
        (users) => emit(WatchUsersState.watching(users)),
      ),
    );
  }
}
