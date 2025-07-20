import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/org_donation_tab/org_donation_tab_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

class OrDonationTabMenuItem extends StatelessWidget {
  final DonationState state;

  const OrDonationTabMenuItem({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color:
            context.watch<OrgDonationTabCubit>().state == state
                ? Colors.orange
                : Colors.white.withAlpha(25),
        shape: StadiumBorder(),
        child: InkWell(
          onTap: () => context.read<OrgDonationTabCubit>().setTab(state),
          customBorder: StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Center(child: TextRegular(state.value, bold: true)),
          ),
        ),
      ),
    );
  }
}
