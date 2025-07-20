import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectThreatTimeCubit extends Cubit<Option<DateTime>> {
  SelectThreatTimeCubit() : super(none());

  void selectTime(DateTime time) {
    emit(some(time));
  }
}
