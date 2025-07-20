import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';

part 'delete_service_state.dart';
part 'delete_service_cubit.freezed.dart';

@injectable
class DeleteServiceCubit extends Cubit<DeleteServiceState> {
  final IDonationServiceRepo _donationServiceRepo;
  DeleteServiceCubit(this._donationServiceRepo)
    : super(DeleteServiceState.initial());

  Future<void> deleteService(String serviceId) async {
    emit(DeleteServiceState.loading());
    final failureOrDeleted = await _donationServiceRepo.deleteService(
      serviceId,
    );

    failureOrDeleted.fold(
      (failure) => emit(DeleteServiceState.failed(failure.message)),
      (_) => emit(DeleteServiceState.succeed()),
    );
  }
}
