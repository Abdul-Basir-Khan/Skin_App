import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/book_a_consaltant/consaltant_details.dart';
import 'package:skin/theme/app_colors.dart';

class BookaAConsaltant extends StatefulWidget {
  const BookaAConsaltant({super.key});

  @override
  State<BookaAConsaltant> createState() => _BookaAConsaltantState();
}

class _BookaAConsaltantState extends State<BookaAConsaltant> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icon/consaltant/Vector (3).svg"),

                    const ReusableText(
                      title: "Book a Consultation",
                      weight: FontWeight.w700,
                      size: 24,
                      color: Color(0xffEFEFEF),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xffA8A6A7),
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xffA8A6A7)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xffA8A6A7))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xffA8A6A7))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xffA8A6A7))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const ReusableText(
                      title:
                          'Connect with a Skincare Expert to ensure your wellness regimens are the most effective in keeping your skin healthy and nourished. You can setup a virtual or in-person consultation. During our consultation we will evaluate your skin conditions, lifestyle, through products review, and develop realistic skincare goals. Post consultation you will receive a customized plan with product recommendation and step-by-step instructions.Added bonus – we’ve made things easier – if you buy more than two products, we will credit half of your virtual consultation towards your purchase.',

                      weight: FontWeight.w400,
                      size: 12,
                      color: Color(0xffFFFFFF),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableText(
                    title: 'Catagories',
                    weight: FontWeight.w500,
                    size: 14,
                    color: AppColors.buttonColor,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 0;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: _currentIndex == 0
                                  ? const Color(0xffFCF1E8)
                                  : Colors.transparent),
                          child: Center(
                            child: ReusableText(
                              title: 'In-person',
                              weight: FontWeight.w600,
                              size: 18,
                              color: _currentIndex == 0
                                  ? const Color(0xffF89D49)
                                  : AppColors.buttonColor,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: _currentIndex == 1
                                  ? const Color(0xffFCF1E8)
                                  : Colors.transparent),
                          child: Center(
                            child: ReusableText(
                              title: 'Virtual',
                              weight: FontWeight.w600,
                              size: 18,
                              color: _currentIndex == 1
                                  ? const Color(0xffF89D49)
                                  : AppColors.buttonColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _currentIndex == 0 ? const InPersonTab() : Container()
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class InPersonTab extends StatefulWidget {
  const InPersonTab({super.key});

  @override
  State<InPersonTab> createState() => _InPersonTabState();
}

class _InPersonTabState extends State<InPersonTab> {
  final List imagesList = [
    'assets/images/consaltant/brown.png',
    'assets/images/consaltant/lightpibk.png',
    'assets/images/consaltant/Rectangle 4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                3,
                (index) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Image(
                            image: AssetImage(imagesList[index].toString()),
                          ),
                          const Positioned(
                              top: 10,
                              left: 20,
                              child: ReusableText(
                                title: 'Rough\nskin\n10 Consultant',
                                color: AppColors.fullBlackColor,
                                weight: FontWeight.w600,
                                size: 12,
                              ))
                        ],
                      ),
                    )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const ReusableText(
          title: 'Consultant',
          color: AppColors.buttonColor,
          weight: FontWeight.w600,
          size: 24,
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFE8D3),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage("assets/images/consaltant/Rectangle 6.png"),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    title: 'Jasmine Barnett, MBA',
                    color: Color(0xffF67B09),
                    weight: FontWeight.w500,
                    size: 13,
                  ),
                  ReusableText(
                    title: 'Master Esthetician',
                    color: Color(0xff514D4D),
                    weight: FontWeight.w500,
                    size: 11,
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ConsultantDetails()));
                },
                child: Container(
                  height: 29,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFFC086)),
                  child: const Center(
                    child: ReusableText(
                      title: 'call',
                      color: Color(0xffFFFFFF),
                      weight: FontWeight.w500,
                      size: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const ReusableButton(
          textRequired: 'Next Consultant',
        )
      ],
    );
  }
}
