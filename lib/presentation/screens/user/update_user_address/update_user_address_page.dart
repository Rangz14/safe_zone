import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/select_town/select_town_cubit.dart';
import 'package:safe_zone/application/update_user_address/update_user_address_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/select_down_widget.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class UpdateUserAddressPage extends StatelessWidget
    implements AutoRouteWrapper {
  UpdateUserAddressPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => getIt<UpdateUserAddressCubit>()),
      BlocProvider(create: (context) => getIt<SelectTownCubit>()),
    ],
    child: this,
  );

  final MutableObject<String> townId = MutableObject<String>('');
  final MutableObject<String> address = MutableObject<String>('');

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UpdateUserAddressCubit, UpdateUserAddressState>(
          listener:
              (context, state) => state.maybeWhen(
                loaded: () => context.router.replaceAll([HomeRoute()]),
                failed: (message) => showFailedToast(context, message),
                orElse: () => null,
              ),
        ),
        BlocListener<SelectTownCubit, SelectTownState>(
          listener: (context, state) {
            if (state.selectedTown.isSome()) {
              townId.value = state.selectedTown.getOrCrash().id;
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Update Address')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextLarge("Your Address"),
              const VGap(gap: 40),
              TownSelect(
                type: SelectTownFieldType.province,
                hint: 'Select Province',
              ),

              const VGap(gap: 20),
              TownSelect(
                type: SelectTownFieldType.district,
                hint: 'Select District',
              ),
              const VGap(gap: 20),
              TownSelect(type: SelectTownFieldType.city, hint: 'Select City'),
              const VGap(gap: 20),
              TownSelect(type: SelectTownFieldType.town, hint: 'Select Town'),
              const VGap(gap: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address'),
                onChanged:
                    (addressText) =>
                        address.value = address.value = addressText,
              ),
              const VGap(gap: 40),
              BlocBuilder<UpdateUserAddressCubit, UpdateUserAddressState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading:
                        () => const Center(child: CircularProgressIndicator()),
                    orElse:
                        () => FilledButton(
                          onPressed: () {
                            context
                                .read<UpdateUserAddressCubit>()
                                .updateAddress(townId.value, address.value);
                          },
                          child: const Text('Update Address'),
                        ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
