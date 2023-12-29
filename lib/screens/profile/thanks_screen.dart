import 'package:casa_vertical_stepper/casa_vertical_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';


class ThanksScreen extends StatefulWidget {
  const ThanksScreen({super.key});

  @override
  State<ThanksScreen> createState() => _ThanksScreenState();
}

class _ThanksScreenState extends State<ThanksScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: ListView
        (
        children: [
          Stack(
            children: [
              const Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
              ),

              Positioned(
                top: 60,left: 0,right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),

                      child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SvgPicture.asset('assets/images/tract_order/Group (1).svg'),
                              const SizedBox(height: 20,),
                              const ReusableText(title: 'Thank You',weight: FontWeight.w400,size: 33,color: Color(0xffFFFFFF),),
                              const ReusableText(title: 'Your feedback was successfully submitted',weight: FontWeight.w400,size: 14,color: Color(0xffEFEFEF),),

                           const SizedBox(height: 30,),
                              const ReusableText(title: 'Back to home',weight: FontWeight.w500,size: 14,color: Color(0xffED1C24),),
                            ],
                          )

                    ),


                  ],
                ),
              ),


            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),));
  }
}
