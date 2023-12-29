import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/registeration_screen/sign_in_screen.dart';
import 'package:skin/theme/app_colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
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
                          title: 'Skin Quiz',
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
              height: 30,
            ),
           Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ReusableText(
                        title:
                            'Create an account and you will have access to take a skin analysis quiz, connect with a Wellness Specialist, access to wellness tips, products, and place orders. Come back anytime to shop for your favorite products by logging in with your username and password.',
                        alignment: TextAlign.center,
                        weight: FontWeight.w600,
                        size: 20,
                        color: AppColors.fullBlackColor,
                      ),
                      const Spacer(),
                     GestureDetector(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>const SigninScreen()));
                         },
                         child: const ReusableButton(textRequired: 'Start'))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
