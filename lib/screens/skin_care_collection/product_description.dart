import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      extendBody: true,
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    const Image(
                        image: AssetImage(
                            "assets/images/collection/Group 1000003549.png")),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.all(6),
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.fullWhiteColor),
                      child:
                          SvgPicture.asset("assets/icon/sign_in/profile_.svg"),
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
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReusableText(title: 'The 1969 Artisinal\nPhilosopher',weight: FontWeight.w400,size: 32,color: Color(0xff282C3F),)
                     ,
                      const SizedBox(height: 10,),
                      const ReusableText(title: 'Add  Scandinavian simplicity to your wish with this minimal yet innovative timepiece. Each dial is handcrafted to perfection by the award winning horologist, Jakob Wagar.',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),)
                     , const SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            height: 40,width: 40,
                            margin: const EdgeInsets.only(right: 10),

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: const Color(0xffAD7E7E),
                            ),
                            gradient: const LinearGradient(colors: [
                              Color(0xffC2B195),
                              Color(0xffEDE4D3),
                            ])
                          ),),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            height: 40,width: 40,
                            margin: const EdgeInsets.only(right: 10),

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),

                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                              Color(0xffCDCBB4),
                              Color(0xffDDD7C7),
                              Color(0xff6D6652),
                              Color(0xffE2DBC9),
                            ])
                          ),),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            height: 40,width: 40,
                            margin: const EdgeInsets.only(right: 10),

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(colors: [
                              Color(0xffCBC5C5
                              ),
                              Color(0xffADADAD),
                            ])
                          ),),
                        ],
                      ),
                      const SizedBox(height: 20,),

                      const ReusableText(title: 'Specifications',weight: FontWeight.w400,size: 24,color: Color(0xff282C3F),),
                      const SizedBox(height: 10,),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width*0.30,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(title: 'Case material',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: 'Strap width',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: 'Strap dimension',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: 'Case material',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: 'Strap width',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: 'Strap diamension',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width*0.50,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(title: ': Titanium',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: ': 178 mm',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: ': 200 cm',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: ': Titanium',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: ': 178 mm',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                                ReusableText(title: ': 200 cm',weight: FontWeight.w400,size: 14,color: Color(0xff282C3F),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),

                    ],
                  ),
                ),
                const ReusableButton(textRequired: 'Add to Cart'),

                const SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
