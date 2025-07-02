import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectThreatCategoryCubit extends Cubit<Option<String>> {
  SelectThreatCategoryCubit() : super(none());

  void selectCategory(String categoryId) {
    emit(some(categoryId));
  }
}
