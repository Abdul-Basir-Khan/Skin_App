import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/flawless_screen.dart';
import 'package:skin/theme/app_colors.dart';


class ChildbirthScreen extends StatefulWidget {
  const ChildbirthScreen({super.key});

  @override
  State<ChildbirthScreen> createState() => _ChildbirthScreenState();
}

class _ChildbirthScreenState extends State<ChildbirthScreen> {
  final List genderList=[
    'Yes',
    'No',
    'I don\'t know / Doesn\'t apply',
  ];

  int _currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return  ReusableForScreen(requiresWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ReusableText(title: 'Do your dark spots worsen after childbirth?',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        const SizedBox(height: 10,),
        ... List.generate(genderList.length, (index) =>  GestureDetector(
          onTap: (){
            setState(() {
              _currentIndex=index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            margin: const EdgeInsets.only(bottom: 10),
            width: MediaQuery.sizeOf(context).width*1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:_currentIndex==index?AppColors.buttonColor:AppColors.fullWhiteColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ReusableText(title: genderList[index],weight: FontWeight.w600,size: 18,color:_currentIndex==index?AppColors.fullWhiteColor: AppColors.fullBlackColor,),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:AppColors.fullWhiteColor,
                      border: Border.all(color:  _currentIndex==index?AppColors.fullWhiteColor:AppColors.buttonColor)
                  ),)


              ],
            ),

          ),
        ),),

        const Spacer(),
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FlawlessScreen()));
            },
            child: const ReusableButton(textRequired: 'Start'))


      ],));
  }
}
