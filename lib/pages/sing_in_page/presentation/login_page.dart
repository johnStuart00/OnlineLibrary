import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:online_library/pages/library_main_page/presentation/library_main_page.dart';
import 'package:online_library/pages/sing_up_page/presentation/sing_up_page.dart';

import '../../../widgets/password_text_field.dart';
import '../../../widgets/user_name_text_field.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final phoneNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
              width: 300,
              child: Placeholder(),
            ),
            const SizedBox(height: 30),
            UserNameTextField(
              userNameController: phoneNameController,
              label: 'Phone number',
            ),
            const SizedBox(height: 10),
            PasswordTextField(passwordController: passwordController),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (phoneNameController.text == "123" &&
                    passwordController.text == "123") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LibraryMainPage()));
                }
              },
              child: Text(AppLocalizations.of(context)!.logIn),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.dontHaveAccaunt),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SingUpPage()));
                  },
                  child: Text(
                    AppLocalizations.of(context)!.singUpHere,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
