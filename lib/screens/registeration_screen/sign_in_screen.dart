import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin/bottom_app_bar/bottom_navigation_app_bar.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/registeration_screen/sign_up_screen.dart';
import 'package:skin/theme/app_colors.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final List socialAcc=[
    'assets/icon/sign_in/logos_facebook.svg',
    'assets/icon/sign_in/logos_linkedin-icon.svg',
    'assets/icon/sign_in/grommet-icons_google.svg',
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: ListView(
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
                  shape: BoxShape.circle,
                  color: AppColors.fullWhiteColor
                ),
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
                      title: 'Sign In',
                      weight: FontWeight.w700,
                      size: 40,
                      color: AppColors.fullWhiteColor,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ReusableText(
                      title: 'Enter your email and password',
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
                 hintText: 'Email',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w700
                      ,fontSize: 16,color:Color(0xffA8A6A7)
                ),
                border:UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffA8A6A7)
                  )
                ),
                 focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(
                         color: Color(0xffA8A6A7)
                     )
                 ),
                 enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(
                         color: Color(0xffA8A6A7)
                     )
                 )
               ),
             ),
              const SizedBox(height: 10,),
              const TextField(
                decoration: InputDecoration(
                  suffixIcon: ReusableText(title:'Forgot password?',weight:  FontWeight.w700,size: 16,color:Color(0xffD87234) ,),
suffixIconConstraints:BoxConstraints(

) ,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w700
                        ,fontSize: 16,color:Color(0xffA8A6A7)
                    ),
                    border:UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffA8A6A7)
                        )
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffA8A6A7)
                        )
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffA8A6A7)
                        )
                    )
                ),
              ),
              const SizedBox(height: 25,),
              GestureDetector(
                  onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationAppBar ()));
                  },
                  child: const ReusableButton(textRequired: 'LOG IN')),
              const SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupScreen()));
                },
                child: RichText(text: const TextSpan(text:'Dont have an acount?',style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.fullBlackColor
                ),
                children: [
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(
           decoration:TextDecoration.underline ,
                        fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xffD87234)
                    ),
                  ),
                ]
                ),
                ),
              ),
              const SizedBox(height: 25,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 2,color: const Color(0xffA8A6A7),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  const ReusableText(
                    title: 'Sign In with',
                    weight: FontWeight.w400,
                    size: 16,
                    color: AppColors.fullBlackColor,
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      height: 2,color: const Color(0xffA8A6A7),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(3, (index) => Padding(padding: const EdgeInsets.only(right: 25),
                child: SvgPicture.asset(socialAcc[index].toString()),)),
              ),
              const SizedBox(height: 15,),

              const ReusableText(
                title: 'Skip now -->',
                weight: FontWeight.w400,
                size: 16,
                color:Color(0xffA8A6A7),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ],
    ),));
  }
}
