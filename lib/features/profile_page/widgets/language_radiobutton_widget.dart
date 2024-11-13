import 'package:flutter/material.dart';
import 'package:online_library/features/profile_page/presentation/profile_page_widget.dart';

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
