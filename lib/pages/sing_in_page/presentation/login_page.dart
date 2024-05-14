import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:online_library/pages/library_main_page/presentation/library_main_page.dart';
import 'package:online_library/pages/sing_up_page/presentation/sing_up_page.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'package:online_library/widgets/style_button_widget.dart';
import 'package:http/http.dart' as http;

import '../../../widgets/password_text_field.dart';
import '../../../widgets/phone_number_text_field.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final phoneNameController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _login() async {
    String phoneNumber = phoneNameController.text;
    String password = passwordController.text;

    // Send a POST request to your backend server
    var url = Uri.parse('https://your-backend-api.com/login');
    var response = await http.post(url, body: {
      'username': phoneNumber,
      'password': password,
    });

    if (response.statusCode == 200) {
      // Successful login
      Get.toNamed('/libraryMain');
    } else {
      // Failed login
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Login Failed"),
            content: Text("Invalid username or password"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorWhite,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  image: AssetImage('assets/images/tagamly_sozler001.png')),
              const SizedBox(height: 30),
              PhoneNumberTextField(
                userNameController: phoneNameController,
                label: 'Phone number',
              ),
              const SizedBox(height: 10),
              PasswordTextField(passwordController: passwordController),
              const SizedBox(height: 30),
              StyleButtonWidget(
                buttonColor: AppColors.mainColor,
                buttonBorderColor: AppColors.mainWhite,
                buttonTextColor: AppColors.mainWhite,
                buttonName: AppLocalizations.of(context)!.logIn,
                onTap: () {
                  if (phoneNameController.text == "65 656565" &&
                      passwordController.text == "123") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LibraryMainPage()));
                  }
                },
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
        ),
      )),
    );
  }
}
