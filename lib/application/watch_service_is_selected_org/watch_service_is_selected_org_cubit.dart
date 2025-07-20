import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:safe_zone/domain/organization/i_organization_repo.dart';

@injectable
class WatchServiceIsSelectedOrgCubit extends Cubit<bool> {
  final IOrganizationRepo _organizationRepo;
  WatchServiceIsSelectedOrgCubit(this._organizationRepo) : super(false);

  void watchServiceIsSelected(String serviceId) {
    _organizationRepo
        .watchServiceIsSelectedOrg(serviceId)
        .listen(
          (either) => either.fold(
            (failure) => emit(false),
            (isSelected) => emit(isSelected),
          ),
        );
  }
}
