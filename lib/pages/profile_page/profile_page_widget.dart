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
                    child: const Text('A'),
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
            onTap: () {},
            containerName: 'Ulgamyň dili',
            containerItemValue: 'Turkmen dili',
            containerIcon: Icons.language_rounded,
          ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Gara tema',
          //   containerItemValue: 'Öçürlen',
          //   containerIcon: Icons.dark_mode_rounded,
          // ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Çagalar üçin',
          //   containerItemValue: 'Öçürlen',
          //   containerIcon: Icons.bedroom_baby_rounded,
          // ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Auto ýüklemek',
          //   containerItemValue: 'Öçürlen',
          //   containerIcon: Icons.download_rounded,
          // ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Diňe Wi-Fi',
          //   containerItemValue: 'Öçürlen',
          //   containerIcon: Icons.wifi_rounded,
          // ),
          // const SizedBox(height: 5),
          // const Divider(),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Sorag jogap',
          //   containerItemValue: '',
          //   containerIcon: Icons.question_answer_rounded,
          // ),
          // const SizedBox(height: 5),
          // _SettingsContainerWidget(
          //   containerName: 'Kömek',
          //   containerItemValue: '',
          //   containerIcon: Icons.help_center,
          // ),
        ],
      ),
    );
  }
}

class _SettingsContainerWidget extends StatelessWidget {
  final String containerName;
  final String containerItemValue;
  final IconData containerIcon;
  final Function onTap;
  const _SettingsContainerWidget({
    required this.containerName,
    required this.containerItemValue,
    required this.onTap,
    required this.containerIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: SizedBox(
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
      ),
    );
  }
}
