import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';
import 'package:safe_zone/domain/service/service.dart';

part 'watch_donation_services_state.dart';
part 'watch_donation_services_cubit.freezed.dart';

@injectable
class WatchDonationServicesCubit extends Cubit<WatchDonationServicesState> {
  final IDonationServiceRepo _donationServiceRepo;
  WatchDonationServicesCubit(this._donationServiceRepo)
    : super(WatchDonationServicesState.loading());

  Future<void> watchDonationServices() async {
    emit(const WatchDonationServicesState.loading());
    _donationServiceRepo.watchServices().listen((services) {
      if (services.isLeft()) {
        emit(WatchDonationServicesState.failed(services.getLeft().message));
        return;
      }
      emit(WatchDonationServicesState.watching(services.getOrCrash()));
    });
  }
}
