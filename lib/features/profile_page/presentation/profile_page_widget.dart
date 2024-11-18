import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_library/features/profile_page/widgets/auto_save_radiobutton_widget.dart';
import 'package:online_library/features/profile_page/widgets/for_children_radiobutton_widget.dart';
import 'package:online_library/features/profile_page/widgets/language_radiobutton_widget.dart';
import 'package:online_library/features/profile_page/widgets/only_wifi_radiobutton_widget.dart';
import 'package:online_library/features/profile_page/widgets/settings_container_widget.dart';
import 'package:online_library/features/profile_page/widgets/theme_radiobutton_widget.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'package:online_library/widgets/style_button_widget.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({super.key});

  @override
  State<ProfilePageWidget> createState() => _ProfilePageWidgetState();
}

enum LanguageCharacter { tkm, rus, eng }

LanguageCharacter? _character = LanguageCharacter.tkm;

enum ThemeCharacter { acyk, gara }

ThemeCharacter? _themeCharacter = ThemeCharacter.acyk;

enum ForChildCharacter { hawa, yok }

ForChildCharacter? _forChildCharacter = ForChildCharacter.yok;

enum AutoSaveCharacter { hawa, yok }

AutoSaveCharacter? _autoSaveCharacter = AutoSaveCharacter.yok;

enum OnlyWiFiCharacter { hawa, yok }

OnlyWiFiCharacter? _onlyWiFiCharacter = OnlyWiFiCharacter.yok;

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //Profile user name
          SizedBox(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text('A'),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Anonim'),
                        Text("User"),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right_rounded),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          //Sing in and up button
          StyleButtonWidget(
            buttonName: 'Sign in',
            onTap: () {
              // Get.toNamed('/singIn');
            },
            buttonColor: Theme.of(context).primaryColor,
            buttonBorderColor: Theme.of(context).primaryColor,
            buttonTextColor: Theme.of(context).primaryColor,
          ),
          const SizedBox(height: 10),
          //Profile settings
          SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'System language',
                barrierDismissible: true,
                content: const Column(
                  children: [
                    LanguageRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'System language',
            containerItemValue: 'Turkmen dili',
            containerIcon: Icons.language_rounded,
          ),
          const SizedBox(height: 5),
          SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Theme',
                barrierDismissible: true,
                content: const Column(
                  children: [
                    ThemeRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Dark theme',
            containerItemValue: 'Öçürlen',
            containerIcon: Icons.dark_mode_rounded,
          ),
          const SizedBox(height: 5),
          SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Temany saýlaň',
                barrierDismissible: true,
                content: const Column(
                  children: [
                    ForChildRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'For Child',
            containerItemValue: 'Hawa',
            containerIcon: Icons.bedroom_baby_rounded,
          ),
          const SizedBox(height: 5),
          SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Temany saýlaň',
                barrierDismissible: true,
                content: const Column(
                  children: [
                    AutoSaveRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Auto download',
            containerItemValue: 'Ýok',
            containerIcon: Icons.download_rounded,
          ),
          const SizedBox(height: 5),
          SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Temany saýlaň',
                barrierDismissible: true,
                content: const Column(
                  children: [
                    OnlyWiFiRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Only Wi-Fi',
            containerItemValue: 'Ýok',
            containerIcon: Icons.wifi_rounded,
          ),
          const SizedBox(height: 5),
          const Divider(),
          const SizedBox(height: 5),
          SettingsContainerWidget(
            onTap: () {},
            containerName: 'Questions',
            containerItemValue: '',
            containerIcon: Icons.question_answer_rounded,
          ),
          const SizedBox(height: 5),
          SettingsContainerWidget(
            onTap: () {},
            containerName: 'Help',
            containerItemValue: '',
            containerIcon: Icons.help_center,
          ),
        ],
      ),
    );
  }
}
