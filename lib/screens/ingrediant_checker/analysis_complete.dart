import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';

class AnalysisComplete extends StatefulWidget {
  const AnalysisComplete({super.key});

  @override
  State<AnalysisComplete> createState() => _AnalysisCompleteState();
}

class _AnalysisCompleteState extends State<AnalysisComplete> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffE5E5E5),

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
                        title: 'Skin Care',
                        weight: FontWeight.w600,
                        size: 24,
                        color: Color(0xffEFEFEF),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ReusableText(
                        title: 'Analysis Complete',
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
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      width: MediaQuery.sizeOf(context).width*1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFFFFFF),

                      ),
                      child:    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ReusableText(
                            title:
                            'Here are the results of your ingredient analysis!We were able to match 1 ingredient, and we\'ve broken down all of the details of the ingredients that you entered below.',

                            weight: FontWeight.w600,
                            size: 18,
                            color: AppColors.fullBlackColor,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,children: [
                              CircleAvatar(backgroundColor: AppColors.fullBlackColor,radius: 3,),
                            SizedBox(width: 10,),
                            ReusableText(
                              title:
                              'product that contains 1 ingredients.',
                              weight: FontWeight.w600,
                              size: 18,
                              color: AppColors.fullBlackColor,
                            ),
                          ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,children: [
                            CircleAvatar(backgroundColor: AppColors.fullBlackColor,radius: 3,),
                            SizedBox(width: 10,),
                            ReusableText(
                              title:
                              'it doesn\'t contain any harsh alcohols,\ncommon allergens, fragrances, oils,\nparabens, silicones or sulfates',
                              weight: FontWeight.w600,
                              size: 18,
                              color: AppColors.fullBlackColor,
                            ),
                          ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,children: [
                            CircleAvatar(backgroundColor: AppColors.fullBlackColor,radius: 3,),
                            SizedBox(width: 10,),
                            ReusableText(
                              title:
                              'it is reef safe',
                              weight: FontWeight.w600,
                              size: 18,
                              color: AppColors.fullBlackColor,
                            ),
                          ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,children: [
                            CircleAvatar(backgroundColor: AppColors.fullBlackColor,radius: 3,),
                            SizedBox(width: 10,),
                            ReusableText(
                              title:
                              'it is not fungal acne (malassezia) safe',
                              weight: FontWeight.w600,
                              size: 18,
                              color: AppColors.fullBlackColor,
                            ),
                          ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                      decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(20)),
                      child:  const Center(
                        child: ReusableText(
                          title: 'See how this ingredient list matches your skin',
                          alignment: TextAlign.center,
                          weight: FontWeight.w600,
                          size: 16,
                          color: AppColors.fullWhiteColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
