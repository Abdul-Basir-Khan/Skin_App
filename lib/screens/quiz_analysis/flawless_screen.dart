import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/current_skin_screen.dart';
import 'package:skin/theme/app_colors.dart';


class FlawlessScreen extends StatefulWidget {
  const FlawlessScreen({super.key});

  @override
  State<FlawlessScreen> createState() => _FlawlessScreenState();
}

class _FlawlessScreenState extends State<FlawlessScreen> {
  @override
  Widget build(BuildContext context) {
    return  ReusableForScreen(requiresWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ReusableText(title: 'Flawless skin starts with a flawless skincare ritual.',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        const SizedBox(height: 10,),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal:15 ),
          child: ReusableText(title: 'Healthy skin begins with a balanced skincare routine and consistency',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        ),

        const Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CurrentSkinScreen()));
            },
            child  : const ReusableButton(textRequired: 'Start'))


      ],));
  }
}
