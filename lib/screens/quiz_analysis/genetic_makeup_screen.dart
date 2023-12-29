import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/polutted_screen.dart';
import 'package:skin/theme/app_colors.dart';


class GeneticMakeUpScreen extends StatefulWidget {
  const GeneticMakeUpScreen({super.key});

  @override
  State<GeneticMakeUpScreen> createState() => _GeneticMakeUpScreenState();
}

class _GeneticMakeUpScreenState extends State<GeneticMakeUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  ReusableForScreen(requiresWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ReusableText(title: 'Your skin is more than your genetic makeup.',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        const SizedBox(height: 10,),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal:15 ),
          child: ReusableText(title: 'It’s essential to recognize that factors like our local climate, air quality, and stress levels have a significant impact on your skin’s well-being',weight: FontWeight.w600,alignment: TextAlign.center,size: 18,color: AppColors.buttonColor,),
        ),

        const Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const PoluttedScreen()));
            },
            child  : const ReusableButton(textRequired: 'Start'))


      ],));
  }
}
