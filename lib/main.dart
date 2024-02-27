import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_library/pages/welcome_page/presentation/welcome_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_library/pages/library_main_page/presentation/library_main_page.dart';
import 'package:online_library/pages/sing_up_page/presentation/login_page.dart';
import 'package:online_library/pages/sing_up_page/presentation/sing_up_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Online Library",
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    routes: {
    '/welcome': (context) => WelcomePage(),
    '/singup': (context) => SingUpPage(),
    '/singin': (context) => LogInPage(),
    '/librarymain': (context) => LibraryMainPage(),
  },
    initialRoute: '/librarymain',
  ));
}

class OnlineLibrary extends StatelessWidget {
  const OnlineLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return const WelcomePage();
  }
}
