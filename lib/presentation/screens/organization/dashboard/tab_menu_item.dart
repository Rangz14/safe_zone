import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/org_menu/org_menu_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/presentation/widgets/text.dart';

class OrgTabMenuItem extends StatelessWidget {
  final OrgMenuState state;

  const OrgTabMenuItem({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color:
            context.watch<OrgMenuCubit>().state == state
                ? Colors.green
                : Colors.white.withAlpha(25),
        shape: StadiumBorder(),
        child: InkWell(
          onTap: () => context.read<OrgMenuCubit>().setTab(state),
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
