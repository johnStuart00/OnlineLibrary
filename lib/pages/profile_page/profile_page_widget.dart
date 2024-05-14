import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'package:online_library/widgets/style_button_widget.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({super.key});

  @override
  State<ProfilePageWidget> createState() => _ProfilePageWidgetState();
}

enum SingingCharacter { tkm, rus, eng }

SingingCharacter? _character = SingingCharacter.tkm;

enum ThemeCharacter { acyk, gara }

ThemeCharacter? _themeCharacter = ThemeCharacter.acyk;

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
                color: AppColors.mainWhite,
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
                      color: AppColors.mainGrey100,
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
                        Text("Ulanyjy"),
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
            buttonName: 'Agza bolmak',
            onTap: () {},
            buttonColor: AppColors.mainColor,
            buttonBorderColor: AppColors.mainColor,
            buttonTextColor: AppColors.mainWhite,
          ),
          const SizedBox(height: 10),
          //Profile settings
          _SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Ulgamyň dili',
                barrierDismissible: true,
                content: Column(
                  children: [
                    LanguageRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Ulgamyň dili',
            containerItemValue: 'Turkmen dili',
            containerIcon: Icons.language_rounded,
          ),
          const SizedBox(height: 5),
          _SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Temenay saýlaň',
                barrierDismissible: true,
                content: Column(
                  children: [
                    ThemeRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Gara tema',
            containerItemValue: 'Öçürlen',
            containerIcon: Icons.dark_mode_rounded,
          ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Çagalar üçin',
          //   containerItemValue: 'Öçürlen',
          //   containerIcon: Icons.bedroom_baby_rounded,
          // ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Auto ýüklemek',
          //   containerItemValue: 'Öçürlen',
          //   containerIcon: Icons.download_rounded,
          // ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Diňe Wi-Fi',
          //   containerItemValue: 'Öçürlen',
          //   containerIcon: Icons.wifi_rounded,
          // ),
          // const SizedBox(height: 5),
          // const Divider(),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Sorag jogap',
          //   containerItemValue: '',
          //   containerIcon: Icons.question_answer_rounded,
          // ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Kömek',
          //   containerItemValue: '',
          //   containerIcon: Icons.help_center,
          // ),
        ],
      ),
    );
  }
}

class _SettingsContainerWidget extends StatelessWidget {
  final String containerName;
  final String containerItemValue;
  final IconData containerIcon;
  final onTap;
  const _SettingsContainerWidget({
    required this.containerName,
    required this.containerItemValue,
    required this.onTap,
    required this.containerIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 40,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.mainWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const SizedBox(width: 5),
              Icon(
                containerIcon,
              ),
              const SizedBox(width: 5),
              Expanded(child: Text(containerName)),
              Container(
                alignment: Alignment.center,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.mainGrey100,
                ),
                child: Text(containerItemValue),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageRadioButton extends StatefulWidget {
  const LanguageRadioButton({super.key});

  @override
  State<LanguageRadioButton> createState() => _LanguageRadioButtonState();
}

class _LanguageRadioButtonState extends State<LanguageRadioButton> {
  SingingCharacter? _character = SingingCharacter.tkm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Türkmen dili'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.tkm,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Rus dili'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.rus,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Iňlis dili'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.eng,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class ThemeRadioButton extends StatefulWidget {
  const ThemeRadioButton({super.key});

  @override
  State<ThemeRadioButton> createState() => _ThemeRadioButtonState();
}

class _ThemeRadioButtonState extends State<ThemeRadioButton> {
  ThemeCharacter? _ThemeCharacter = ThemeCharacter.acyk;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Açyk tema'),
          leading: Radio<ThemeCharacter>(
            value: ThemeCharacter.acyk,
            groupValue: _ThemeCharacter,
            onChanged: (ThemeCharacter? value) {
              setState(() {
                _ThemeCharacter = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Gara tema'),
          leading: Radio<ThemeCharacter>(
            value: ThemeCharacter.gara,
            groupValue: _ThemeCharacter,
            onChanged: (ThemeCharacter? value) {
              setState(() {
                _ThemeCharacter = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
