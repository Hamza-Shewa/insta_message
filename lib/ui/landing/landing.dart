import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';
import 'package:insta_message/ui/landing/cubit/landing_cubit.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LandingCubit(),
      child: BlocBuilder<LandingCubit, CubitState>(
        builder: (context, state) {
          final controller = context.read<LandingCubit>();
          return Scaffold(
            appBar: AppBar(
              title: Text('insta message'.tr()),
              centerTitle: true,
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.history),
                  label: 'history'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: 'home'.tr(),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: 'settings'.tr(),
                ),
              ],
              currentIndex: controller.currentIndex,
              onTap: controller.changeIndex,
            ),
            body: state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (v) => controller.screens[v],
              error: () {
                return Center(
                  child: Text('Error'.tr()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
