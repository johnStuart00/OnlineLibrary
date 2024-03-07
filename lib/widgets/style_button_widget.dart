import 'package:flutter/material.dart';

class StyleButtonWidget extends StatelessWidget {
  final String buttonName;
  final onTap;
  final Color buttonColor;
  final Color buttonBorderColor;
  final Color buttonTextColor;

  const StyleButtonWidget({
    super.key,
    required this.buttonName,
    required this.onTap,
    required this.buttonColor,
    required this.buttonBorderColor,
    required this.buttonTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: buttonColor,
            border: Border.all(color: buttonBorderColor)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        width: double.infinity,
        child: Center(
            child: Text(
          buttonName,
          style: TextStyle(color: buttonTextColor),
        )),
      ),
    );
  }
}
