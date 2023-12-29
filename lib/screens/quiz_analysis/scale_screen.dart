import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';


class ScaleScreen extends StatefulWidget {
  const ScaleScreen({super.key});

  @override
  State<ScaleScreen> createState() => _ScaleScreenState();
}

class _ScaleScreenState extends State<ScaleScreen> {
  final List scaleList=[
    'Yes',
    'Somewhat polluted',
    'No',
    'I\'m not sure',
  ];

  int _currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return  ReusableForScreen(requiresWidget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ReusableText(title: 'On a scale from 1-10 how would you rate your stress level over the past 90 days?',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        const SizedBox(height: 10,),
        ... List.generate(scaleList.length, (index) =>  GestureDetector(
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
                ReusableText(title: scaleList[index],weight: FontWeight.w600,size: 18,color:_currentIndex==index?AppColors.fullWhiteColor: AppColors.fullBlackColor,),
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
        const SizedBox(height: 10,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ReusableText(alignment: TextAlign.center,title: 'We Highly recommend speaking with a skincare expert about the products that best suits your skin',weight: FontWeight.w600,size: 18,color: AppColors.buttonColor,),
        ),

        const Spacer(),
        GestureDetector(
            onTap: (){

            },
            child: const ReusableButton(textRequired: 'Start'))


      ],));
  }
}
