import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/name_screen.dart';
import 'package:skin/theme/app_colors.dart';

class StartAnalysis extends StatefulWidget {
  const StartAnalysis({super.key});

  @override
  State<StartAnalysis> createState() => _StartAnalysisState();
}

class _StartAnalysisState extends State<StartAnalysis> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffE5E5E5),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              const Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xffD9D9D9),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFE1BD)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ReusableText(
                        title: 'Skin Analysis Quiz',
                        weight: FontWeight.w600,
                        size: 24,
                        color: Color(0xffEFEFEF),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ReusableText(
                        title: 'Welcome to the\nfuture of skin care!',
                        alignment: TextAlign.center,
                        weight: FontWeight.w600,
                        size: 24,
                        color: Color(0xffEFEFEF),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                   width: MediaQuery.sizeOf(context).width*1,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: const Color(0xffFFFFFF),
                     
                   ),
                   child:    const Center(
                     child: ReusableText(
                       title:
                       'We are excited to get to know you and your skin. Please take this quick and easy skin analysis quiz to determine your skin type. Once completed we’ll recommend a personalized skincare ritual just for you.We are excited to get to know you and your skin. Please take this quick and easy skin analysis quiz to determine your skin type. Once completed we’ll recommend a personalized skincare ritual just for you.',
                       alignment: TextAlign.center,
                       weight: FontWeight.w600,
                       size: 20,
                       color: AppColors.fullBlackColor,
                     ),
                   ),
                 ),
                    const Spacer(),
                    GestureDetector(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const NameScreen()));
                        },
                        child: const ReusableButton(textRequired: 'Start'))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
