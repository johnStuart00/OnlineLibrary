import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_library/pages/library_main_page/presentation/library_main_page.dart';
import 'package:online_library/pages/otp/presentation/otp.dart';
import 'package:online_library/pages/read_and_buy_page/presentation/read_and_buy_page.dart';
import 'package:online_library/pages/sing_up_page/presentation/sing_up_page.dart';
import 'package:online_library/pages/welcome_page/presentation/welcome_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_library/pages/home_page/home_page_widget.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'pages/sing_in_page/presentation/login_page.dart';

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
        GetPage(name: '/singIn', page: () => const LogInPage()),
        GetPage(name: '/singUp', page: () => const SingUpPage()),
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
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: AppColors.mainColor),
          labelStyle: TextStyle(color: AppColors.mainColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: AppColors.mainColor),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.mainColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.mainColor)),
        ),
        scaffoldBackgroundColor: AppColors.mainWhite,
        primaryColor: AppColors.mainColorWhite,
        primaryColorLight: AppColors.mainColor,
        primaryColorDark: AppColors.mainWhite,
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ).apply(
            bodyColor: AppColors.mainColor,
            displayColor: AppColors.mainWhite,
            decorationColor: AppColors.mainColor),
        shadowColor: Colors.grey.withOpacity(0.2),
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.mainColor,
          iconTheme: IconThemeData(
            color: AppColors.mainWhite,
          ),
          elevation: 2.0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainColor,
          selectedItemColor: AppColors.mainColorWhite,
          unselectedItemColor: AppColors.mainColorWhite,
        ),
        tabBarTheme: TabBarTheme(
            labelColor: AppColors.mainColor,
            unselectedLabelColor: AppColors.mainWhite,
            indicatorColor: AppColors.mainColorWhite),
        switchTheme: SwitchThemeData(
          thumbColor: MaterialStatePropertyAll(AppColors.mainColorWhite),
        ),
      ),

      // home: WelcomePage(),
    );
  }
}
