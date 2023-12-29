import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
class ReusableForScreen extends StatelessWidget {

  final Widget requiresWidget;

  const ReusableForScreen({super.key, required this.requiresWidget});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body:ListView(
physics: NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [

              Image(
          fit: BoxFit.cover,
                  image: AssetImage("assets/images/dashboard/Rectangle 17.png",)),



              Positioned(
                top: 50,left: 0,right: 0,
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
                  ],
                ),
              ),
            ],
          ),

          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.56,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child:
             requiresWidget
            ),
          )


        ],
      ),
    ));

  }
}
