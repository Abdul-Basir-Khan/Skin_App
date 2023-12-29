import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';

class SuccessDialog extends StatefulWidget {
  const SuccessDialog({Key? key}) : super(key: key);

  @override
  State<SuccessDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Dialog(
        backgroundColor: const Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(image:AssetImage("assets/images/ingredient_checker/success.png")),
              SizedBox(
                height: 15,
              ),
              ReusableText(
                title:
                'Congratulations! Your product has no pore-clogging ingredients!',
                color: AppColors.fullBlackColor,weight: FontWeight.w600,size: 18,alignment: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
