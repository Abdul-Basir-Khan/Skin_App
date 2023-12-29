import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/profile/faq_screen.dart';
import 'package:skin/screens/profile/help_screen.dart';
import 'package:skin/screens/profile/rate_App.dart';
import 'package:skin/screens/refer_and_earn/refer_and_earn.dart';
import 'package:skin/theme/app_colors.dart';


class ProfileMain extends StatelessWidget {
  const ProfileMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HelpScreen()));
          
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xff000000))
          ), 
          child: const ReusableText(title: 'Help',color: AppColors.fullBlackColor,),
        ),
        ),
        GestureDetector(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReferAndEarn()));

        },
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xff000000))
          ),
          child: const ReusableText(title: 'Refer And Earn',color: AppColors.fullBlackColor,),
        ),
        ),
        GestureDetector(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const FaqScreen()));

        },
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xff000000))
          ),
          child: const ReusableText(title: 'FAQ',color: AppColors.fullBlackColor,),
        ),
        ),
        GestureDetector(onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const RateAppScreen()));

        },
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xff000000))
          ),
          child: const ReusableText(title: 'Rate App',color: AppColors.fullBlackColor,),
        ),
        ),
      ],
    );
  }
}
