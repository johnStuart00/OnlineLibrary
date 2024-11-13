import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_library/features/library_main_page/presentation/library_main_page.dart';
import 'package:online_library/features/otp/presentation/otp.dart';
import 'package:online_library/features/read_and_buy_page/presentation/read_and_buy_page.dart';
import 'package:online_library/features/welcome_page/presentation/welcome_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_library/features/home_page/presentation/pages/home_page_widget.dart';
import 'package:online_library/tools/colors/theme/app_theme.dart';

void main() {
  runApp(const OnlineLibrary());
}

class OnlineLibrary extends StatelessWidget {
  const OnlineLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Online Library",
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: '/libraryMain',
      getPages: [
        GetPage(name: '/welcome', page: () => const WelcomePage()),
        GetPage(name: '/libraryMain', page: () => const LibraryMainPage()),
        GetPage(name: '/readAndBuyPage', page: () => const ReadAndBuyPage()),
        GetPage(
            name: '/libraryMain/mainDetails',
            page: () => const MainPageWidget()),
        GetPage(name: '/get-token-page', page: () => const GetTokenPage())
      ],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return const Text('Default Route');
        });
      },
      theme: AppTheme.theme,
    );
  }
}
