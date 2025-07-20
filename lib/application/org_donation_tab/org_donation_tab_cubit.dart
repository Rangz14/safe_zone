import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/constants.dart';

@injectable
class OrgDonationTabCubit extends Cubit<DonationState> {
  OrgDonationTabCubit() : super(DonationState.pending);

  void setTab(DonationState state) {
    emit(state);
  }
}
