import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StyleButtonWidget extends StatelessWidget {
  const StyleButtonWidget({
    super.key,
    this required.buttonName,
  });

  String buttonName;

  @override
  Widget build(BuildContext context) {
      return Container(
        child: Text(AppLocalizations.of(context)!.logIn),
      );

    // return ElevatedButton(
    //     onPressed: () {
    //       Navigator.push(context,
    //           MaterialPageRoute(builder: (context) => const LogInPage()));
    //     },
    //     child: Text(AppLocalizations.of(context)!.logIn));
  }
}
