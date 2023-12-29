import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/customise_skincare/product_details.dart';
import 'package:skin/theme/app_colors.dart';

class CustomiseSkinCare extends StatefulWidget {
  const CustomiseSkinCare({super.key});

  @override
  State<CustomiseSkinCare> createState() => _CustomiseSkinCareState();
}

class _CustomiseSkinCareState extends State<CustomiseSkinCare> {
  final List skinCareType = [
    'skin\ncare',
    'Body',
    'Other',
  ];
  final List skinCareCategories = [
    'Popular',
    'Newest',
    '20 % Off',
    '50 % Off',
  ];

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBody: true,
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 40,

          margin: const EdgeInsets.symmetric(horizontal: 70,vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 7),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40) ,
            color: const Color(0x90F6F2E6),
          ),
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            SvgPicture.asset('assets/icon/customise/heart_.svg'),
            SvgPicture.asset('assets/icon/customise/search normal 1_.svg',),
            SvgPicture.asset( 'assets/icon/customise/wallet money_.svg',),
          ],
          ),
        ),
      ),
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
          const Positioned(
              top: 80,
              left: 10,
              right: 10,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/images/customise/Rectangle 35.png")))
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
            Row(
              children: List.generate(
                skinCareType.length,
                (index) => Container(
                  height: 190,
                  width: MediaQuery.sizeOf(context).width * 0.29,
                  margin: const EdgeInsets.only(right: 7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffF6F2E6),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xf20000000),
                            offset: Offset(0, 4),
                            blurRadius: 0.10,
                            spreadRadius: 0.10),
                        BoxShadow(
                            color: Color(0xf20000000),
                            offset: Offset(4, 0),
                            blurRadius: 0.10,
                            spreadRadius: 0.10)
                      ]),
                  child: Center(
                    child: Container(
                      height: 103,
                      width: MediaQuery.sizeOf(context).width * 0.20,
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: const Color(0xffF3EBDE),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: ReusableText(
                        title: skinCareType[index],
                        weight: FontWeight.w400,
                        size: 15,
                        color: AppColors.fullBlackColor,
                      )),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: List.generate(
                skinCareCategories.length,
                (index) =>
                    GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 17, vertical: 6),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffF6F2E6),
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
                    child: Center(
                        child: ReusableText(
                      title: skinCareCategories[index],
                      weight: FontWeight.w400,
                      size: 13,
                      color: _currentIndex == index
                          ? AppColors.fullBlackColor
                          : const Color(0xffA99277),
                    ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            _currentIndex==0?PopularTab():Container()
          ],
        ),
      ),
    ],
      ),
    );
  }
}



class PopularTab extends StatelessWidget {
 PopularTab({super.key});

  final  List nameList=[
    'Ks body milk',
    'Labo de chemi',
    'Atrium lotion',
    'Ks body milk',
    'Labo de chemi',
    'Atrium lotion',
  ];

  final List productList=[
    "assets/images/customise/img1.png",
    "assets/images/customise/img2.png",
    "assets/images/customise/img3.png",
    "assets/images/customise/img4.png",
    "assets/images/customise/img5.png",
    "assets/images/customise/img6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(

          itemCount: productList.length,shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
          crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,
        ), itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,children: [
            GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetail()));
                },

                child: Image(image: AssetImage(productList[index].toString()))) ,
            const SizedBox(height: 10,),

            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xffF6F2E6),
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
                  ]),
              child: Center(
                child: ReusableText(
                  title: nameList[index],
                  weight: FontWeight.w400,
                  size: 13,
                  color:
                      AppColors.fullBlackColor

                ),
              ),
            ),






          ],
          );

        },)

      ],
    );
  }
}
