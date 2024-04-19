import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:insta_message/logic/global/alerts/insta_alerts.dart';
import 'package:insta_message/logic/structure/enums.dart';
import 'package:insta_message/logic/structure/models.dart';
import 'package:insta_message/logic/themes/themes.dart';
import 'package:insta_message/ui/landing/landing.dart';

void main() async {
  await _initApp();
  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[Locale('en'), Locale('ar')],
      path: 'assets/translations',
      useOnlyLangCode: true,
      fallbackLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}

_initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UsageAdapter());
  await Hive.openBox('settings');
  await Hive.openBox('history');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('settings').listenable(),
      builder: (context, snapshot, widget) {
        return MaterialApp(
          title: 'Insta Message'.tr(),
          theme: lightTheme,
          scaffoldMessengerKey: InstaAlerts.rootScaffoldMessengerKey,
          darkTheme: darkTheme,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: Locale(snapshot.get('language') ?? 'ar'),
          debugShowCheckedModeBanner: false,
          themeMode: (snapshot.get('theme') ?? ThemeType.light.name) ==
                  ThemeType.light.name
              ? ThemeMode.light
              : ThemeMode.dark,
          home: const LandingView(),
        );
      },
    );
  }
}
