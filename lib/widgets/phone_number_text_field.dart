import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    super.key,
    required this.userNameController,
    required this.label,
  });

  final TextEditingController userNameController;
  final String label;

  void textFieldClear() {
    userNameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: userNameController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          suffix: GestureDetector(
            onTap: textFieldClear,
            child: const Icon(Icons.clear_rounded),
          ),
        ),
      ),
    );
  }
}
