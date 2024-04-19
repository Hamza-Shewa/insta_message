import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';
import 'package:insta_message/logic/structure/enums.dart';
import 'package:insta_message/ui/global/widgets.dart';
import 'package:insta_message/ui/settings/cubit/settings_cubit.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocBuilder<SettingsCubit, CubitState>(
        builder: (context, state) {
          final controller = context.read<SettingsCubit>();
          return Column(
            children: [
              Row(
                children: [
                  InstaButton(
                    onPressed: () {
                      context.setLocale(const Locale('ar'));
                      controller.changeLanguage('ar');
                    },
                    text: 'arabic'.tr(),
                  ),
                  InstaButton(
                    onPressed: () {
                      context.setLocale(const Locale('en'));
                      controller.changeLanguage('en');
                    },
                    text: 'english'.tr(),
                  ),
                ],
              ),
              Row(
                children: [
                  InstaButton(
                    onPressed: () {
                      controller.changeTheme(ThemeType.light);
                    },
                    text: 'light'.tr(),
                  ),
                  InstaButton(
                    onPressed: () {
                      controller.changeTheme(ThemeType.dark);
                    },
                    text: 'dark'.tr(),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
