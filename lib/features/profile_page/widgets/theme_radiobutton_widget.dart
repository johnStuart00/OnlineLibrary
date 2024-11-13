import 'package:flutter/material.dart';
import 'package:online_library/features/profile_page/presentation/profile_page_widget.dart';

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