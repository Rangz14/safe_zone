import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/threat/i_threat_repo.dart';
import 'package:safe_zone/domain/threat/threat_category/threat_category.dart';

part 'watch_threat_categories_state.dart';
part 'watch_threat_categories_cubit.freezed.dart';

@injectable
class WatchThreatCategoriesCubit extends Cubit<WatchThreatCategoriesState> {
  final IThreatRepo _threatRepo;
  WatchThreatCategoriesCubit(this._threatRepo)
    : super(WatchThreatCategoriesState.loading());

  Future<void> watchCategories() async {
    emit(WatchThreatCategoriesState.loading());
    _threatRepo.watchCategories().listen((failureOrCategories) {
      failureOrCategories.fold(
        (failure) => emit(WatchThreatCategoriesState.failed(failure.message)),
        (categories) => emit(WatchThreatCategoriesState.watching(categories)),
      );
    });
  }
}
