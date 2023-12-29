import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/choose_goal.dart';
import 'package:skin/screens/quiz_analysis/select_gender.dart';
import 'package:skin/theme/app_colors.dart';


class SelectAgeScreen extends StatefulWidget {
  const SelectAgeScreen({super.key});

  @override
  State<SelectAgeScreen> createState() => _SelectAgeScreenState();
}

class _SelectAgeScreenState extends State<SelectAgeScreen> {
  @override
  Widget build(BuildContext context) {
    return  ReusableForScreen(requiresWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ReusableText(title: 'How young are you?',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        const SizedBox(height: 10,),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: const Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,children: [
                Icon(Icons.keyboard_arrow_up,color: AppColors.fullBlackColor,),
                Icon(Icons.keyboard_arrow_down,color: AppColors.fullBlackColor,),
              ],
              ),
              hintText: '0',
              hintStyle: const TextStyle(
                fontWeight: FontWeight.w700
                ,fontSize: 16,color:AppColors.fullBlackColor,
              ),
              border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color:AppColors.buttonColor,
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.buttonColor,
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.buttonColor,
                  )
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SelectGender()));
            },
            child  : const ReusableButton(textRequired: 'Start'))


      ],));
  }
}
