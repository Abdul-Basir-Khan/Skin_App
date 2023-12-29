import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';

class ProCloggingFountDialog extends StatefulWidget {
  const ProCloggingFountDialog({Key? key}) : super(key: key);

  @override
  State<ProCloggingFountDialog> createState() => _ProCloggingFountDialogState();
}

class _ProCloggingFountDialogState extends State<ProCloggingFountDialog> {
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
            Image(image:AssetImage("assets/images/ingredient_checker/warning.png")),
              SizedBox(
                height: 15,
              ),
              ReusableText(
                title:
                'Unfortunately, there are some pore-clogging ingredients in your product.\n*If you have acne-prone skin, we suggest finding a non-comedogenic and acne safe product* please see recommendations below',
                color: AppColors.fullBlackColor,weight: FontWeight.w600,size: 18,alignment: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
