import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/color_utils.dart';
import '../../../../injection_container.dart';
import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final backgroundColor = switch (state) {
            HomeInitial() => AppConstants.defaultBackgroundColor,
            HomeColorChanged() => state.backgroundColor,
          };

          return GestureDetector(
            onTap: () => context.read<HomeCubit>().changeColor(),
            child: Scaffold(
              backgroundColor: backgroundColor,
              body: Center(
                child: Text(
                  AppConstants.helloText,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: ColorUtils.getTextContrastColor(backgroundColor),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
