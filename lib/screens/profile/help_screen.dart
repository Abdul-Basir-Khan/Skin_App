import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                          child: ReusableText(
                        title: 'Help Center',
                        weight: FontWeight.w500,
                        size: 20,
                        color: AppColors.fullWhiteColor,
                      )),
                      const ReusableText(
                        title: 'Product Type',
                        weight: FontWeight.w500,
                        size: 17,
                        color: Color(0xffED1C24),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReusableText(
                        title:
                            'Nec quisque dui egestas magna laoreet pellentesque eleifend. Ultricies viverra eget donec curabitur feugiat pretium id sit. Cras sit imperdiet et ut at sit diam et. Egestas urna, amet, dictum fermentum neque posuere.',
                        weight: FontWeight.w400,
                        size: 17,
                        color: Color(0xffFFFFFF),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                          child: ReusableText(
                        title: 'Can’t find your answer?',
                        weight: FontWeight.w500,
                        size: 14,
                        color: Color(0xff303030),
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.40,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.buttonColor,
                          ),
                          child: const Center(
                            child: ReusableText(
                              title: 'Contact Us',
                              weight: FontWeight.w500,
                              size: 14,
                              color: Color(0xffFFFFFF),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Money Transfers.',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Foreign Accounts.',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Bank Collection',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Cash Collections.',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Wallet Collections.',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Request Money.',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Currency & Exchange Rates.',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Ambassador Program.',
                      alignment: TextAlign.center,
                      weight: FontWeight.w500,
                      size: 15,
                      color: Color(0xff303030),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add,
                      color: Color(0xff303030),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
