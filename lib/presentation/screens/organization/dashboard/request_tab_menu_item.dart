import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/org_req_tab/org_req_tab_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

class OrgRequestTabMenuItem extends StatelessWidget {
  final DonationRequestState state;

  const OrgRequestTabMenuItem({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color:
            context.watch<OrgReqTabCubit>().state == state
                ? Colors.blue
                : Colors.white.withAlpha(25),
        shape: StadiumBorder(),
        child: InkWell(
          onTap: () => context.read<OrgReqTabCubit>().setTab(state),
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
