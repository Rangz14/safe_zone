import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat.dart';

part 'watch_user_threats_state.dart';
part 'watch_user_threats_cubit.freezed.dart';

@injectable
class WatchUserThreatsCubit extends Cubit<WatchUserThreatsState> {
  final IThreatRepo _threatRepo;
  WatchUserThreatsCubit(this._threatRepo)
    : super(WatchUserThreatsState.loading());

  Future<void> watch() async {
    emit(WatchUserThreatsState.loading());
    _threatRepo.watchByCurrentUser().listen((threats) {
      threats.fold(
        (failure) => emit(WatchUserThreatsState.failed(failure.message)),
        (threatList) {
          emit(WatchUserThreatsState.watching(threatList));
        },
      );
    });
  }
}
