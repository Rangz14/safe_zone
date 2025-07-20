import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_zone/application/select_town/select_town_cubit.dart';
import 'package:safe_zone/core/constants.dart';
import 'package:safe_zone/core/extensions/dartz_x.dart';

class TownSelect extends StatelessWidget {
  final SelectTownFieldType type;
  final String hint;

  const TownSelect({super.key, required this.type, required this.hint});

  List<String> _getItems(SelectTownState state) {
    switch (type) {
      case SelectTownFieldType.province:
        return state.provinces.getOrCrash();
      case SelectTownFieldType.district:
        if (state.districts.isNone()) return [];
        return state.districts.getOrCrash();
      case SelectTownFieldType.city:
        if (state.cities.isNone()) return [];
        return state.cities.getOrCrash();
      case SelectTownFieldType.town:
        if (state.towns.isNone()) return [];
        return state.towns.getOrCrash();
    }
  }

  void _onSelect(BuildContext context, String? item) {
    if (item == null) return;
    switch (type) {
      case SelectTownFieldType.province:
        context.read<SelectTownCubit>().selectProvince(item);
        break;
      case SelectTownFieldType.district:
        context.read<SelectTownCubit>().selectDistrict(item);
        break;
      case SelectTownFieldType.city:
        context.read<SelectTownCubit>().selectCity(item);
        break;
      case SelectTownFieldType.town:
        context.read<SelectTownCubit>().selectTown(item);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectTownCubit, SelectTownState>(
      builder: (context, state) {
        return DropdownButtonFormField<String>(
          hint: Text(hint),
          items:
              _getItems(state)
                  .map(
                    (item) => DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
          onChanged: (item) => _onSelect(context, item),
          value: _getItems(state).isNotEmpty ? _getItems(state).first : null,
        );
      },
    );
  }
}
