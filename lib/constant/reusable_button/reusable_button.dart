import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';


class ReusableButton extends StatelessWidget {
  final String textRequired;

  const ReusableButton({super.key, required this.textRequired});

  @override
  Widget build(BuildContext context) {
    return

      Container(
  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
      decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(20)),
      child:  Center(
        child: ReusableText(
          title: textRequired,
          alignment: TextAlign.center,
          weight: FontWeight.w600,
          size: 24,
          color: AppColors.fullWhiteColor,
        ),
      ),
    );
  }
}
