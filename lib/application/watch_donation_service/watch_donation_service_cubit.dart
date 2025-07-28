import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';
import 'package:safe_zone/domain/service/service.dart';

part 'watch_donation_service_state.dart';
part 'watch_donation_service_cubit.freezed.dart';

@injectable
class WatchDonationServiceCubit extends Cubit<WatchDonationServiceState> {
  final IDonationServiceRepo _serviceRepo;
  WatchDonationServiceCubit(this._serviceRepo)
    : super(WatchDonationServiceState.loading());

  Future<void> watch(String id) async {
    emit(WatchDonationServiceState.loading());
    _serviceRepo.watchService(id).listen((event) {
      event.fold(
        (failure) => emit(WatchDonationServiceState.failed(failure.message)),
        (service) => emit(WatchDonationServiceState.watching(service)),
      );
    });
  }
}
