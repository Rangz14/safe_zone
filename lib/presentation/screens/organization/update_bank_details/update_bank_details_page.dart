import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/update_bank_details/update_bank_details_cubit.dart';
import 'package:safe_zone/core/mutable_object.dart';
import 'package:safe_zone/domain/organization/bank_details/bank_details.dart';
import 'package:safe_zone/injection.dart';
import 'package:safe_zone/presentation/router/app_router.dart';
import 'package:safe_zone/presentation/widgets/space.dart';
import 'package:safe_zone/presentation/widgets/text.dart';
import 'package:safe_zone/presentation/widgets/toast.dart';

@RoutePage()
class UpdateBankDetailsPage extends StatelessWidget
    implements AutoRouteWrapper {
  UpdateBankDetailsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (context) => getIt<UpdateBankDetailsCubit>(),
    child: this,
  );

  final MutableObject<OrganizationBankDetails> bankDetails = MutableObject(
    OrganizationBankDetails.empty(),
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocListener<UpdateBankDetailsCubit, UpdateBankDetailsState>(
      listener:
          (context, state) => state.maybeWhen(
            succeed:
                () => context.router.replaceAll([SelectServicesOrgRoute()]),
            failed: (message) => showFailedToast(context, message),
            orElse: () => Unit,
          ),
      child: Scaffold(
        appBar: AppBar(title: Text("Update Bank Details")),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            children: [
              const VGap(gap: 40),
              TextLarge("Update your organization's bank details"),
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
                    TextFormField(
                      decoration: InputDecoration(labelText: "Bank Name"),
                      onChanged:
                          (value) =>
                              bankDetails.value = bankDetails.value.copyWith(
                                bankName: value,
                              ),
                    ),
                    const VGap(gap: 40),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Bank Branch"),
                      onChanged:
                          (value) =>
                              bankDetails.value = bankDetails.value.copyWith(
                                bankBranch: value,
                              ),
                    ),
                    const VGap(gap: 40),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Account Name"),
                      onChanged:
                          (value) =>
                              bankDetails.value = bankDetails.value.copyWith(
                                accountName: value,
                              ),
                    ),
                    const VGap(gap: 40),
                    TextFormField(
                      decoration: InputDecoration(labelText: "Account Number"),
                      onChanged:
                          (value) =>
                              bankDetails.value = bankDetails.value.copyWith(
                                accountNumber: value,
                              ),
                    ),
                    const VGap(gap: 40),
                    BlocBuilder<UpdateBankDetailsCubit, UpdateBankDetailsState>(
                      builder:
                          (context, state) => state.maybeWhen(
                            loading: () => CircularProgressIndicator(),
                            orElse:
                                () => FilledButton(
                                  onPressed:
                                      () => context
                                          .read<UpdateBankDetailsCubit>()
                                          .updateBankDetails(bankDetails.value),
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
