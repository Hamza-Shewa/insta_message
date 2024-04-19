import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_message/global/extensions.dart';
import 'package:insta_message/logic/global/cubit_state/cubit_state.dart';
import 'package:insta_message/logic/global/utilities/input_formatters.dart';
import 'package:insta_message/logic/structure/enums/social.dart';
import 'package:insta_message/ui/global/widgets.dart';
import 'package:insta_message/ui/home/cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, CubitState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final controller = context.read<HomeCubit>();
          return Scaffold(
            appBar: AppBar(
              title: Text('home'.tr()),
            ),
            body: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InstaField(
                    controller: controller.phoneField,
                    inputType: TextInputType.phone,
                    hintText: '2189XXXXXXXX'.tr(),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'required'.tr();
                      }
                      if (controller.isLibyan &&
                          value.replaceAll(' ', '').length != 12) {
                        return 'invalid'.tr();
                      }
                      return null;
                    },
                    inputFormatters: controller.isLibyan
                        ? [
                            FilteringTextInputFormatter.digitsOnly,
                            LibyanPhoneFormatter(),
                            LengthLimitingTextInputFormatter(16)
                          ]
                        : [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                    prefix: IconButton(
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/ly.png',
                          color: controller.isLibyan
                              ? Colors.transparent
                              : Colors.grey.withOpacity(.5),
                          colorBlendMode: BlendMode.srcATop,
                          height: 25,
                        ),
                      ),
                      onPressed: controller.toggleCountry,
                    ),
                    suffix: IconButton(
                      icon: Icon(
                        Icons.content_paste,
                        color: context.theme.primaryColor,
                      ),
                      onPressed: controller.paste,
                    ),
                  ),
                  10.height,
                  InstaButton(
                    onPressed: controller.go,
                    text: 'go'.tr(),
                  ),
                  10.height,
                  InstaOutlinedButton(
                    onPressed: () {
                      controller.launch(Social.whatsApp);
                    },
                    text: 'go'.tr(),
                  ),
                ],
              ).marginHorizontal(18),
            ),
          );
        },
      ),
    );
  }
}
