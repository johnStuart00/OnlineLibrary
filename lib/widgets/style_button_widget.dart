import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StyleButtonWidget extends StatelessWidget {
  final String buttonName;
  final onTap;

  const StyleButtonWidget({
    required this.buttonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        padding: const EdgeInsets.symmetric(vertical: 13),
        width: double.infinity,
        child: Center(
            child: Text(
          buttonName,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
