import 'package:casa_vertical_stepper/casa_vertical_stepper.dart';
import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/profile/thanks_screen.dart';
import 'package:skin/theme/app_colors.dart';


class RateAppScreen extends StatefulWidget {
  const RateAppScreen({super.key});

  @override
  State<RateAppScreen> createState() => _RateAppScreenState();
}

class _RateAppScreenState extends State<RateAppScreen> {



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



              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.fullWhiteColor),
                      child:
                      const Center(child: Icon(Icons.arrow_back_ios,color: Color(0xff303030),)),
                    ),
                    const Spacer(

                    )
                  ],
                ),
              ),
         Positioned(
                top: 60,left: 0,right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(child: ReusableText(title: 'Rate App',weight: FontWeight.w500,size: 20,color: Color(0xffFFFFFF),)),
                    const SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.sizeOf(context).width*1,
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.fullWhiteColor,

                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(title: 'Rate your Experience',weight: FontWeight.w400,size: 18,color: Color(0xff303030),),
                          SizedBox(height: 4,),
                          ReusableText(title: 'Are you satisfied with the service?',weight: FontWeight.w400,size: 9,color: Color(0xff666666),),
                          SizedBox(height: 4,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.star,color: Color(0xffED1C24),),
                              Icon(Icons.star,color: Color(0xffC4C4C4),),
                              Icon(Icons.star,color: Color(0xffC4C4C4),),
                              Icon(Icons.star,color: Color(0xffC4C4C4),),
                              Icon(Icons.star,color: Color(0xffC4C4C4),),
                              Icon(Icons.star,color: Color(0xffC4C4C4),),
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: ReusableText(title: 'Tell us what can be improved?',weight: FontWeight.w500,size: 14,color: Color(0xffE5E5E5),),
                    ),


                  ],
                ),
              ),


            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableText(title: 'Subject',weight: FontWeight.w400,size: 15,color: Color(0xff303030),),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 48,
                    child:

                    TextField(
                      decoration: InputDecoration(
                        filled:
                        true,fillColor: Colors.white,
                        hintText: 'Type here',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color:  Color(0xffABA7A7),),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none

                        ),
                      ),
                    ),
                  ),


                  const SizedBox(height: 10,),
                  const ReusableText(title: 'Give your feedback here',weight: FontWeight.w400,size: 15,color: Color(0xff303030),),
                  const SizedBox(height: 10,),
                  TextField(
                    maxLines: 5,
                    decoration: InputDecoration(

                      filled:
                      true,fillColor: Colors.white,
                      hintText: 'Write something here..',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color:  Color(0xffABA7A7),),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none

                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThanksScreen()));

                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                      decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(10)),
                      child:  const Center(
                        child: ReusableText(
                          title: 'Submit',
                          alignment: TextAlign.center,
                          weight: FontWeight.w600,
                          size: 24,
                          color: AppColors.fullWhiteColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,)

                ],
              ),
            ),
          )
        ],
      ),));
  }
}
