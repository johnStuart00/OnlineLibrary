import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    super.key,
    required this.phoneNumberController,
    required this.label,
  });

  final TextEditingController phoneNumberController;
  final String label;

  void textFieldClear() {
    phoneNumberController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: phoneNumberController,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          LengthLimitingTextInputFormatter(9),
          FilteringTextInputFormatter.digitsOnly,
          _PhoneNumberFormatter(),
        ],
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          prefix: const Text('+993 '),
          //hintText: '+993 -- -- -- -- --',
          suffix: GestureDetector(
            onTap: textFieldClear,
            child: const Icon(Icons.clear_rounded),
          ),
        ),
      ),
    );
  }
}

class _PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text;

    if (newText.length > 2 && !newText.contains(' ')) {
      newText = '${newText.substring(0, 2)} ${newText.substring(2)}';
    }

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
