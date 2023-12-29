import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/skin_care_collection/product_description.dart';
import 'package:skin/theme/app_colors.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({super.key});


  final List colorsListOne=[
    const Color(0xffF1E8C8),
    const Color(0xffF3EDD9),
    const Color(0xffC19F7C),
    const Color(0xffEDDDA9),
    const Color(0xffEAC696),
    const Color(0xffC8AE7D),
    const Color(0xff765827),
    const Color(0x80C58940),
    const Color(0x80F2ECBE),
    const Color(0xff6A4A23),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,body: ListView(
      children: [
        Stack(clipBehavior: Clip.none,
          children: [

            const Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: const BoxDecoration(
                    color: Color(0x70F3F0E7),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25)  )
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          Icon(Icons.person_outline_sharp,color: Color(0xff3B2616),),
                        ],
                      ),
                      ReusableText(title: 'Nars Radiant Creamy Concealer',weight: FontWeight.w400,size: 16,color: AppColors.fullBlackColor,),
                      ReusableText(title: 'THE #1 SELLING CONCEALER IN THE U.S.',weight: FontWeight.w400,size: 11,color: AppColors.fullBlackColor,)
                      ,
                    ],
                  ),
                ),
                Positioned(
                  bottom: 1,left: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 18,
                          padding: const EdgeInsets.symmetric(horizontal: 2,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xffF3F0E7)
                          ),
                          child:  Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: List.generate(4, (index) => const Icon(size:20,Icons.star,color: AppColors.fullBlackColor,)),
                          )
                      ),
SizedBox(width: MediaQuery.sizeOf(context).width*0.25,),
                      Container(height: 18,
                          padding: const EdgeInsets.symmetric(horizontal: 10,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xffF3F0E7)
                          ),
                          child:   const Center(child: ReusableText(title: 'Reviews',weight: FontWeight.w400,size: 10,color: AppColors.fullBlackColor,)),

                      ),


                      SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                      Container(height: 18,
                        padding: const EdgeInsets.symmetric(horizontal: 10,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffF3F0E7)
                        ),
                        child:   const Center(child: ReusableText(title: 'see more',weight: FontWeight.w400,size: 10,color: AppColors.fullBlackColor,)),

                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 140,left: 15,
              child: Container(
                width: MediaQuery.sizeOf(context).width*0.30,
               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffE2D8CA),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xf20000000),
                        offset: Offset(4, 4),
                        blurRadius: 0.10,
                        spreadRadius: 0.10),
                    BoxShadow(
                        color: Color(0xf20000000),
                        offset: Offset(
                          4,
                          4,
                        ),
                        blurRadius: 0.10,
                        spreadRadius: 0.10),
                  ]
              ),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const ReusableText(title: '\$30.4',weight: FontWeight.w700,size: 20,color: AppColors.fullBlackColor,),

                  const SizedBox(height: 10,),
                  Container(height: 18,
                    padding: const EdgeInsets.symmetric(horizontal: 10,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color(0xffF3F0E7)
                    ),
                    child:   const Center(child: ReusableText(title: 'Add to cart',weight: FontWeight.w600,size: 13,color: AppColors.fullBlackColor,)),

                  ),
                ],
              ),
              ),
            ),
          Positioned(
            right:10,
            top: 120,
            child:

            SizedBox(
              width: 40,child: ListView.builder(

              itemCount: colorsListOne.length,shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) { return Padding(
                padding: const EdgeInsets.all(5),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: colorsListOne[index],
                ),
              );
              },),
            )
          )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductDescription()));
                },
                child: const Image(image: AssetImage('assets/images/customise/Group 1000003552.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),

    );
  }
}
