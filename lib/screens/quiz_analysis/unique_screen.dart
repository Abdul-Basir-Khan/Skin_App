import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/skin_type.dart';
import 'package:skin/theme/app_colors.dart';


class UniqueScreen extends StatefulWidget {
  const UniqueScreen({super.key});

  @override
  State<UniqueScreen> createState() => _UniqueScreenState();
}

class _UniqueScreenState extends State<UniqueScreen> {
  @override
  Widget build(BuildContext context) {
    return  ReusableForScreen(requiresWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ReusableText(title: 'Your skin is unique.',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        const SizedBox(height: 10,),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal:15 ),
          child: ReusableText(title: 'Your skin is incredibly special. So, let’s dig a little deeper into your skin and really appreciate the one-of-a-kind features that make you who you are',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        ),

        const Spacer(),
        GestureDetector(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const SkinTypeScreen()));
            },
            child  : const ReusableButton(textRequired: 'Start'))


      ],));
  }
}
