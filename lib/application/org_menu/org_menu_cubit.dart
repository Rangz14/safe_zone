import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';

@injectable
class OrgMenuCubit extends Cubit<OrgMenuState> {
  OrgMenuCubit() : super(OrgMenuState.requests);

  void setTab(OrgMenuState state) {
    emit(state);
  }
}
