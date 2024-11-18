import 'package:flutter/material.dart';

class StyleButtonWidget extends StatelessWidget {
  final String buttonName;
  final onTap;
  final Color buttonColor;
  final Color buttonBorderColor;


  const StyleButtonWidget({
    super.key,
    required this.buttonName,
    required this.onTap,
    required this.buttonColor,
    required this.buttonBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(buttonColor)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Center(
            child: Text(
          buttonName,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
