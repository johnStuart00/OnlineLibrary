import 'package:flutter/material.dart';
import 'package:online_library/features/profile_page/presentation/profile_page_widget.dart';

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