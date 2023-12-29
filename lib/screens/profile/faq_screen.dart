import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';
class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(children: [
      Stack(
        children: [
          const Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
          ),
          Positioned(
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                      child: ReusableText(
                        title: 'FAQ',
                        weight: FontWeight.w500,
                        size: 20,
                        color: AppColors.fullWhiteColor,
                      )),

                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title:
                    'At Viral Pitch we expect at a day’s start is you, better and happier than yesterday. We have got you covered share your concern or check our frequently asked questions listed below.',
                    weight: FontWeight.w400,
                    size: 17,
                    color: Color(0xffFFFFFF),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        filled:
                        true,fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search,color: Colors.black,),
                        hintText: 'Search Help',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color:  Color(0xff858585),),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),


                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),

                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),

                        ),
                      ),
                    ),
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
     const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ReusableText(
              title: 'FAQ',
              weight: FontWeight.w700,
              size: 16,
              color:AppColors.fullBlackColor,
            ),
SizedBox(height: 10,)
      ,
            Divider(thickness: 1,color: Color(0xffD4D4D4),height: 1,),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: 'What is Viral Pitch?',
                  alignment: TextAlign.center,
                  weight: FontWeight.w600,
                  size: 16,
                  color: Color(0xff5B5B5B),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color:Color(0xff5B5B5B),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),


            Divider(thickness: 1,color: Color(0xffD4D4D4),height: 1,),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: 'How to apply for a campaign?',
                  alignment: TextAlign.center,
                  weight: FontWeight.w600,
                  size: 16,
                  color: Color(0xff5B5B5B),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color:Color(0xff5B5B5B),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),


            Divider(thickness: 1,color: Color(0xffD4D4D4),height: 1,),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: 'How to know status of a campaign?',
                  alignment: TextAlign.center,
                  weight: FontWeight.w600,
                  size: 16,
                  color: Color(0xff5B5B5B),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color:Color(0xff5B5B5B),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Divider(thickness: 1,color: Color(0xffD4D4D4),height: 1,),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: 'How to know status of a campaign?',
                  alignment: TextAlign.center,
                  weight: FontWeight.w600,
                  size: 16,
                  color: Color(0xff5B5B5B),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color:Color(0xff5B5B5B),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),


            Divider(thickness: 1,color: Color(0xffD4D4D4),height: 1,),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: 'How to apply for a campaign?',
                  alignment: TextAlign.center,
                  weight: FontWeight.w600,
                  size: 16,
                  color: Color(0xff5B5B5B),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color:Color(0xff5B5B5B),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Divider(thickness: 1,color: Color(0xffD4D4D4),height: 1,),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: 'How to know status of a campaign?',
                  alignment: TextAlign.center,
                  weight: FontWeight.w600,
                  size: 16,
                  color: Color(0xff5B5B5B),
                ),
                Spacer(),
                Icon(
                  Icons.add,
                  color:Color(0xff5B5B5B),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),


          ],
        ),
      ),
      Container(
        width: MediaQuery.sizeOf(context).width*1,
        color: Colors.white,child: const Column(
        children: [
          ReusableText(
            title: 'Still stuck? Help us a mail away',
            alignment: TextAlign.center,
            weight: FontWeight.w700,
            size: 20,
            color: Color(0xff000000),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ReusableButton(textRequired: 'Send a message'),
          )
        ],
      ),
      ),
      

    ],),));
  }
}
