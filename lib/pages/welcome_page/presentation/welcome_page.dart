import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_library/pages/sing_in_page/presentation/login_page.dart';
import 'package:online_library/pages/sing_up_page/presentation/sing_up_page.dart';

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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SingUpPage()));
              },
              child: Text(AppLocalizations.of(context)!.createAccaunt),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInPage()));
                },
                child: Text(AppLocalizations.of(context)!.logIn)),
          ],
        ),
      )),
    );
  }
}
