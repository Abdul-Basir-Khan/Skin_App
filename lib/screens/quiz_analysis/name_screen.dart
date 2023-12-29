import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/choose_goal.dart';
import 'package:skin/theme/app_colors.dart';


class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return  ReusableForScreen(requiresWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
      const ReusableText(title: 'What is your name?',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
const SizedBox(height: 10,),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'John Deh...',
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
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChooseGoal()));
           },
           child  : const ReusableButton(textRequired: 'Start'))


    ],));
  }
}
