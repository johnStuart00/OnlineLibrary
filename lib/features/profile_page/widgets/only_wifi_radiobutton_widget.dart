import 'package:flutter/material.dart';
import 'package:online_library/features/profile_page/presentation/profile_page_widget.dart';

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