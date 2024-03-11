import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_library/pages/sing_in_page/presentation/login_page.dart';
import 'package:online_library/pages/sing_up_page/presentation/sing_up_page.dart';
import 'package:online_library/widgets/style_button_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 300, width: 300, child: Placeholder()),
              const SizedBox(
                height: 40,
              ),
              Text(AppLocalizations.of(context)!.helloWorld),
              const SizedBox(
                height: 20,
              ),
              Text(AppLocalizations.of(context)!.readWithOutLimits),
              const SizedBox(
                height: 30,
              ),
              StyleButtonWidget(
                buttonColor: Colors.red,
                buttonBorderColor: Colors.white,
                buttonTextColor: Colors.white,
                buttonName: AppLocalizations.of(context)!.logIn,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInPage()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              StyleButtonWidget(
                buttonColor: Colors.white,
                buttonBorderColor: Colors.red,
                buttonTextColor: Colors.red,
                buttonName: AppLocalizations.of(context)!.createAccaunt,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SingUpPage()));
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
