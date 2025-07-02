import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';
import 'package:safe_zone/domain/service/i_donation_service_repo.dart';
import 'package:safe_zone/domain/service/service.dart';

part 'select_services_org_state.dart';
part 'select_services_org_cubit.freezed.dart';

@injectable
class SelectServicesOrgCubit extends Cubit<SelectServicesOrgState> {
  final IOrganizationRepo _organizationRepo;
  final IDonationServiceRepo _donationServiceRepo;
  SelectServicesOrgCubit(this._organizationRepo, this._donationServiceRepo)
    : super(SelectServicesOrgState.initial());

  Option<List<DonationService>> _services = none();

  Future<void> loadServices(String orgId) async {
    emit(SelectServicesOrgState.loading());
    final failureOrServices = await _donationServiceRepo.getServices();
    if (failureOrServices.isLeft()) {
      emit(SelectServicesOrgState.failed(failureOrServices.getLeft().message));
      return;
    }
    _services = some(failureOrServices.getOrCrash());

    emit(SelectServicesOrgState.loaded(_services.getOrCrash(), []));

    _organizationRepo.watchCurrentServices().listen((failureOrSelected) {
      if (failureOrSelected.isLeft()) {
        emit(
          SelectServicesOrgState.failed(failureOrSelected.getLeft().message),
        );
        return;
      }
      final selected =
          failureOrSelected.getOrCrash().map((e) => e.id).toSet().toList();
      emit(SelectServicesOrgState.loaded(_services.getOrCrash(), selected));
    });
  }

  Future<void> selectService(String serviceId) async {
    final failureOrSelected = await _organizationRepo.addOrgService(serviceId);
    if (failureOrSelected.isLeft()) {
      emit(SelectServicesOrgState.failed(failureOrSelected.getLeft().message));
      return;
    }
  }

  Future<void> unselectService(String serviceId) async {
    final failureOrUnselected = await _organizationRepo.removeOrgService(
      serviceId,
    );
    if (failureOrUnselected.isLeft()) {
      emit(
        SelectServicesOrgState.failed(failureOrUnselected.getLeft().message),
      );
      return;
    }
  }
}
