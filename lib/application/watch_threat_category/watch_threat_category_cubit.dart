import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';

part 'watch_threat_category_state.dart';
part 'watch_threat_category_cubit.freezed.dart';

@injectable
class WatchThreatCategoryCubit extends Cubit<WatchThreatCategoryState> {
  final IThreatRepo _threatRepo;
  WatchThreatCategoryCubit(this._threatRepo)
    : super(WatchThreatCategoryState.loading());

  Future<void> watchCategory(String categoryId) async {
    emit(const WatchThreatCategoryState.loading());
    _threatRepo
        .watchCategory(categoryId)
        .listen(
          (failureOrCategory) => failureOrCategory.fold(
            (failure) => emit(WatchThreatCategoryState.failed(failure.message)),
            (category) => emit(WatchThreatCategoryState.watching(category)),
          ),
        );
  }
}
