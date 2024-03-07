import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class PasswordTextField extends StatefulWidget {
  PasswordTextField({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscureController = true;

  void obscure() {
    obscureController = !obscureController;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        obscureText: obscureController,
        controller: widget.passwordController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Password",
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                obscure();
              });
            },
            child: obscureController
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
        ),
      ),
    );
  }
}
