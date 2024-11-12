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
            onTap: () {
              // Get.toNamed('/singIn');
            },
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
          const SizedBox(height: 5),
          _SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Temany saýlaň',
                barrierDismissible: true,
                content: Column(
                  children: [
                    ForChildRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Çagalar üçin',
            containerItemValue: 'Hawa',
            containerIcon: Icons.bedroom_baby_rounded,
          ),
          const SizedBox(height: 5),
          _SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Temany saýlaň',
                barrierDismissible: true,
                content: Column(
                  children: [
                    AutoSaveRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Auto ýüklemek',
            containerItemValue: 'Ýok',
            containerIcon: Icons.download_rounded,
          ),
          const SizedBox(height: 5),
          _SettingsContainerWidget(
            onTap: () {
              Get.defaultDialog(
                title: 'Temany saýlaň',
                barrierDismissible: true,
                content: Column(
                  children: [
                    OnlyWiFiRadioButton(),
                  ],
                ),
              );
            },
            containerName: 'Diňe Wi-Fi',
            containerItemValue: 'Ýok',
            containerIcon: Icons.wifi_rounded,
          ),
          const SizedBox(height: 5),
          const Divider(),
          const SizedBox(height: 5),
          _SettingsContainerWidget(
            onTap: () {},
            containerName: 'Sorag jogap',
            containerItemValue: '',
            containerIcon: Icons.question_answer_rounded,
          ),
          const SizedBox(height: 5),
          _SettingsContainerWidget(
            onTap: () {},
            containerName: 'Kömek',
            containerItemValue: '',
            containerIcon: Icons.help_center,
          ),
        ],
      ),
    );
  }
}

//Settings container widget start
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
    bool isEmpty = false;
    if (containerItemValue.isNotEmpty) {
      isEmpty = true;
    } else {
      isEmpty = false;
    }
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
                child: Padding(
                  padding: isEmpty
                      ? const EdgeInsets.symmetric(horizontal: 10, vertical: 1)
                      : const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Text(containerItemValue),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}

//Settings container widget end

//Language Radio Button start
class LanguageRadioButton extends StatefulWidget {
  const LanguageRadioButton({super.key});

  @override
  State<LanguageRadioButton> createState() => _LanguageRadioButtonState();
}

class _LanguageRadioButtonState extends State<LanguageRadioButton> {
  LanguageCharacter? _character = LanguageCharacter.tkm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Türkmen dili'),
          leading: Radio<LanguageCharacter>(
            value: LanguageCharacter.tkm,
            groupValue: _character,
            onChanged: (LanguageCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Rus dili'),
          leading: Radio<LanguageCharacter>(
            value: LanguageCharacter.rus,
            groupValue: _character,
            onChanged: (LanguageCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Iňlis dili'),
          leading: Radio<LanguageCharacter>(
            value: LanguageCharacter.eng,
            groupValue: _character,
            onChanged: (LanguageCharacter? value) {
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

//Language Radio Button end

//Theme Radio Button start
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

//Theme Radio Button end

//For Children Radio Button start
class ForChildRadioButton extends StatefulWidget {
  const ForChildRadioButton({super.key});

  @override
  State<ForChildRadioButton> createState() => _ForChildRadioButtonState();
}

class _ForChildRadioButtonState extends State<ForChildRadioButton> {
  ForChildCharacter? _ForChildCharacter = ForChildCharacter.yok;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Ýok'),
          leading: Radio<ForChildCharacter>(
            value: ForChildCharacter.yok,
            groupValue: _ForChildCharacter,
            onChanged: (ForChildCharacter? value) {
              setState(() {
                _ForChildCharacter = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Hawa'),
          leading: Radio<ForChildCharacter>(
            value: ForChildCharacter.hawa,
            groupValue: _ForChildCharacter,
            onChanged: (ForChildCharacter? value) {
              setState(() {
                _ForChildCharacter = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
//For Children Radio Button end

//Auto save Radio Button start
class AutoSaveRadioButton extends StatefulWidget {
  const AutoSaveRadioButton({super.key});

  @override
  State<AutoSaveRadioButton> createState() => _AutoSaveRadioButtonState();
}

class _AutoSaveRadioButtonState extends State<AutoSaveRadioButton> {
  AutoSaveCharacter? _AutoSaveCharacter = AutoSaveCharacter.yok;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Hawa'),
          leading: Radio<AutoSaveCharacter>(
            value: AutoSaveCharacter.hawa,
            groupValue: _AutoSaveCharacter,
            onChanged: (AutoSaveCharacter? value) {
              setState(() {
                _AutoSaveCharacter = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Ýok'),
          leading: Radio<AutoSaveCharacter>(
            value: AutoSaveCharacter.yok,
            groupValue: _AutoSaveCharacter,
            onChanged: (AutoSaveCharacter? value) {
              setState(() {
                _AutoSaveCharacter = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
//Auto save Radio Button end

//Only WiFi Radio Button start

class OnlyWiFiRadioButton extends StatefulWidget {
  const OnlyWiFiRadioButton({super.key});

  @override
  State<OnlyWiFiRadioButton> createState() => _OnlyWiFiRadioButtonState();
}

class _OnlyWiFiRadioButtonState extends State<OnlyWiFiRadioButton> {
  OnlyWiFiCharacter? _OnlyWiFiCharacter = OnlyWiFiCharacter.yok;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Hawa'),
          leading: Radio<OnlyWiFiCharacter>(
            value: OnlyWiFiCharacter.hawa,
            groupValue: _OnlyWiFiCharacter,
            onChanged: (OnlyWiFiCharacter? value) {
              setState(() {
                _OnlyWiFiCharacter = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Ýok'),
          leading: Radio<OnlyWiFiCharacter>(
            value: OnlyWiFiCharacter.yok,
            groupValue: _OnlyWiFiCharacter,
            onChanged: (OnlyWiFiCharacter? value) {
              setState(() {
                _OnlyWiFiCharacter = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
//Only WiFi Radio Button end