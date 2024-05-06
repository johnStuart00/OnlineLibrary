import 'package:flutter/material.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'package:online_library/widgets/style_button_widget.dart';

class ProfilePageWidget extends StatelessWidget {
  const ProfilePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //Profile user name
          SizedBox(
            height: 50,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.mainWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: AppColors.mainGrey100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('A'),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Anonim'),
                        Text("Ulanyjy"),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right_rounded),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          //Sing in and up button
          StyleButtonWidget(
            buttonName: 'Agza bolmak',
            onTap: () {},
            buttonColor: AppColors.mainColor,
            buttonBorderColor: AppColors.mainColor,
            buttonTextColor: AppColors.mainWhite,
          ),
          const SizedBox(height: 10),
          //Profile settings
          _SettingsContainerWidget(
            containerName: 'Ulgamyň dili',
            containerItemValue: 'Turkmen dili',
            containerIcon: Icons.language_rounded,
          ),
        ],
      ),
    );
  }
}

class _SettingsContainerWidget extends StatelessWidget {
  String containerName;
  String containerItemValue;
  IconData containerIcon;
  _SettingsContainerWidget({
    required this.containerName,
    required this.containerItemValue,
    required this.containerIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 5),
            Icon(
              containerIcon,
            ),
            const SizedBox(width: 5),
            Expanded(child: Text(containerName)),
            Container(
              alignment: Alignment.center,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.mainGrey100,
              ),
              child: Text(containerItemValue),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
