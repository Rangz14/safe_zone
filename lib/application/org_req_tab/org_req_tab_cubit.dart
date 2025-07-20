import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';

@injectable
class OrgReqTabCubit extends Cubit<DonationRequestState> {
  OrgReqTabCubit() : super(DonationRequestState.pending);

  void setTab(DonationRequestState state) {
    emit(state);
  }
}
