import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat.dart';

part 'new_threat_state.dart';
part 'new_threat_cubit.freezed.dart';

@injectable
class NewThreatCubit extends Cubit<NewThreatState> {
  final IThreatRepo _threatRepo;
  NewThreatCubit(this._threatRepo) : super(NewThreatState.initial());

  Future<void> createThreat(SafeZoneThreat threat) async {
    emit(const NewThreatState.loading());
    final failureOrSuccess = await _threatRepo.createThreat(threat);
    failureOrSuccess.fold(
      (failure) => emit(NewThreatState.failed(failure.message)),
      (success) => emit(const NewThreatState.succeed()),
    );
  }
}
