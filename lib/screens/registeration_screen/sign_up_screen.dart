import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/registeration_screen/sign_in_screen.dart';
import 'package:skin/theme/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final List socialAcc = [
    'assets/icon/sign_in/logos_facebook.svg',
    'assets/icon/sign_in/grommet-icons_google.svg',
    'assets/icon/sign_in/logos_linkedin-icon.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              const Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.fullWhiteColor),
                  child: SvgPicture.asset("assets/icon/sign_in/profile_.svg"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ReusableText(
                        title: 'Sign Up',
                        weight: FontWeight.w700,
                        size: 40,
                        color: AppColors.fullWhiteColor,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ReusableText(
                        title: 'Fist create your account',
                        alignment: TextAlign.center,
                        weight: FontWeight.w700,
                        size: 16,
                        color: AppColors.fullWhiteColor,
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xffA8A6A7)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7)))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xffA8A6A7)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7)))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off_outlined,
                          color: Color(0xffD87234)),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xffA8A6A7)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7)))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off_outlined,
                          color: Color(0xffD87234)),
                      hintText: 'Confirm your password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xffA8A6A7)),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7))),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffA8A6A7)))),
                ),
                const SizedBox(
                  height: 25,
                ),
                const ReusableButton(textRequired: 'SIGN UP'),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninScreen()));
                  },
                  child: RichText(
                    text: const TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.fullBlackColor),
                        children: [
                          TextSpan(
                            text: '  Login',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffD87234)),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: 'Skip now -->',
                  weight: FontWeight.w400,
                  size: 16,
                  color: Color(0xffA8A6A7),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
