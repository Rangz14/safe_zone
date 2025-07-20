import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';

part 'delete_threat_category_state.dart';
part 'delete_threat_category_cubit.freezed.dart';

@injectable
class DeleteThreatCategoryCubit extends Cubit<DeleteThreatCategoryState> {
  final IThreatRepo _threatRepo;
  DeleteThreatCategoryCubit(this._threatRepo)
    : super(DeleteThreatCategoryState.initial());

  Future<void> deleteThreatCategory(String categoryId) async {
    emit(DeleteThreatCategoryState.loading());
    final failureOrDeleted = await _threatRepo.deleteCategory(categoryId);
    failureOrDeleted.fold(
      (failure) => emit(DeleteThreatCategoryState.failed(failure.message)),
      (_) => emit(DeleteThreatCategoryState.succeed()),
    );
  }
}
