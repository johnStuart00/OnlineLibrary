import 'package:flutter/material.dart';
import 'package:online_library/features/profile_page/presentation/profile_page_widget.dart';

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