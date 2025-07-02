import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/select_town/select_town_cubit.dart';
import 'package:safe_zone/application/update_org_address/update_org_address_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/domain/organization/address/address.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/select_down_widget.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class UpdateOrgAddressPage extends StatelessWidget implements AutoRouteWrapper {
  UpdateOrgAddressPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<UpdateOrgAddressCubit>()),
      BlocProvider(create: (context) => getIt<SelectTownCubit>()),
    ],
    child: this,
  );

  final MutableObject<OrganizationAddress> address = MutableObject(
    OrganizationAddress.empty(),
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<UpdateOrgAddressCubit, UpdateOrgAddressState>(
          listener:
              (context, state) => state.maybeWhen(
                succeed:
                    () => context.router.replaceAll([UpdateBankDetailsRoute()]),
                failed: (message) => showFailedToast(context, message),
                orElse: () => Unit,
              ),
        ),
        BlocListener<SelectTownCubit, SelectTownState>(
          listener: (context, state) {
            if (state.selectedTown.isSome()) {
              address.value = address.value.copyWith(
                townId: state.selectedTown.getOrCrash().id,
              );
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text("Update Organization Address")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            children: [
              const VGap(gap: 40),
              TextLarge("Update your organization's address"),
              const VGap(gap: 40),
              Container(
                padding: const EdgeInsets.all(40),
                margin: const EdgeInsets.symmetric(horizontal: 200),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: theme.colorScheme.surfaceContainer,
                ),
                child: Column(
                  children: [
                    TownSelect(
                      type: SelectTownFieldType.province,
                      hint: "Province",
                    ),
                    const VGap(gap: 40),
                    TownSelect(
                      type: SelectTownFieldType.district,
                      hint: "District",
                    ),
                    const VGap(gap: 40),
                    TownSelect(type: SelectTownFieldType.city, hint: "City"),
                    const VGap(gap: 40),
                    TownSelect(type: SelectTownFieldType.town, hint: "Town"),
                    const VGap(gap: 40),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Address Line"),
                      onChanged:
                          (value) =>
                              address.value = address.value.copyWith(
                                address: value,
                              ),
                    ),
                    const VGap(gap: 40),
                    BlocBuilder<UpdateOrgAddressCubit, UpdateOrgAddressState>(
                      builder:
                          (context, state) => state.maybeWhen(
                            loading: () => CircularProgressIndicator(),
                            orElse:
                                () => FilledButton(
                                  onPressed:
                                      () => context
                                          .read<UpdateOrgAddressCubit>()
                                          .update(address.value),
                                  child: Text("Update Bank Details"),
                                ),
                          ),
                    ),
                  ],
                ),
              ),

              const VGap(gap: 40),
            ],
          ),
        ),
      ),
    );
  }
}
