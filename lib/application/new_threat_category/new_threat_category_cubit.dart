import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';

part 'new_threat_category_state.dart';
part 'new_threat_category_cubit.freezed.dart';

@injectable
class NewThreatCategoryCubit extends Cubit<NewThreatCategoryState> {
  final IThreatRepo _threatRepo;
  NewThreatCategoryCubit(this._threatRepo)
    : super(NewThreatCategoryState.initial());

  Future<void> createCategory(ThreatCategory category) async {
    emit(NewThreatCategoryState.loading());
    final failureOrSuccess = await _threatRepo.createCategory(category);
    failureOrSuccess.fold(
      (failure) => emit(NewThreatCategoryState.failed(failure.message)),
      (_) => emit(NewThreatCategoryState.succeed()),
    );
  }
}
