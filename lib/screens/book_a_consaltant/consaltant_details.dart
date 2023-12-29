import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';

class ConsultantDetails extends StatefulWidget {
  const ConsultantDetails({super.key});

  @override
  State<ConsultantDetails> createState() => _ConsultantDetailsState();
}

class _ConsultantDetailsState extends State<ConsultantDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(
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
                 GestureDetector(

                     onTap: (){
                       Navigator.pop(context);
                     },
                     child: const Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,)),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage("assets/images/consaltant/Rectangle 8.png")),
                        const SizedBox(width: 15,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const ReusableText(
                            title: "Dr.Kelly Seeman",
                            weight: FontWeight.w500,
                            size: 16,
                            color: Color(0xffEFEFEF),
                          ),
                          const SizedBox(height: 10,),
                          const ReusableText(
                            title: "Heart Speacilist\nDhaka",
                            weight: FontWeight.w500,
                            size: 13,
                            color: Color(0xffBFBDBE),
                          ),
                          const SizedBox(height: 10,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF6E6D8),
                                ),
                                child: const Icon(Icons.mail,color: Color(0xffF89D49),),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF6E6D8),
                                ),
                                child: const Icon(Icons.call,color: Color(0xffFF5D17),),
                              ),
                              Container(

                                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF6E6D8),
                                ),
                                child: const Icon(Icons.videocam_rounded,color: Color(0xff71C76F),),
                              ),
                            ],
                          )
                        ],
                      ),

                    ],
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
                  title: 'About',
                  weight: FontWeight.w500,
                  size: 20,
                  color: AppColors.buttonColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: 'At Bloom & Groom Wellness lounge, we provide a comfortable and peaceful atmosphere to ensure you relax through a combination of treatments that help achieve total well-being and encourage quality of life. We specialize in corrective skincare, therapeutic body treatments and a range of holistic services. We invite you to come unwind, relax and leave feeling refreshed and energized.',
                  weight: FontWeight.w500,
                  size: 12,
                  color:Color(0xff7C7676),
                ),

                const SizedBox(height: 20,),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on,color: Color(0xff7C7676),),
                            SizedBox(width: 10,),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(
                                  title: 'Address',
                                  weight: FontWeight.w500,
                                  size: 16,
                                  color: AppColors.buttonColor,
                                ),
                                SizedBox(height: 10,),
                                ReusableText(
                                  title: '1018 Broad Street, Suite 3\nBloomfield, NJ 07003',
                                  weight: FontWeight.w500,
                                  size: 12,
                                  color:Color(0xff7C7676),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.watch_later,color: Color(0xff7C7676),),
                            SizedBox(width: 10,),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(
                                  title: 'Daily Practict',
                                  weight: FontWeight.w500,
                                  size: 16,
                                  color: AppColors.buttonColor,
                                ),
                                SizedBox(height: 10,),
                                ReusableText(
                                  title: 'Monday-Friday\nOpen till 7pm',
                                  weight: FontWeight.w500,
                                  size: 12,
                                  color:Color(0xff7C7676),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Image(image: AssetImage("assets/images/consaltant/Rectangle 12.png"),),
                  ],
                ),
                const SizedBox(height: 10,),
                const ReusableText(
                  title: 'Activity',
                  weight: FontWeight.w500,
                  size: 16,
                  color: AppColors.buttonColor,
                ),

                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width*0.47,
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:const Color(0xffFFC086),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffE5D6C8),
                            ),
                            child: SvgPicture.asset('assets/icon/consaltant/file.svg'),
                          ),
                          const SizedBox(width: 10,),

                          const ReusableText(
                            title: 'List of\nshedule',
                            weight: FontWeight.w500,
                            size: 12,
                            color: AppColors.fullWhiteColor,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: MediaQuery.sizeOf(context).width*0.47,
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:const Color(0xff9F9B9B),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffE5D6C8),
                            ),
                            child: SvgPicture.asset('assets/icon/consaltant/Vector (4).svg'),
                          ),
                          const SizedBox(width: 10,),

                          const ReusableText(
                            title: 'Doctor’s Daily\npost',
                            weight: FontWeight.w500,
                            size: 12,
                            color: AppColors.fullWhiteColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        )

      ],
    ),));
  }
}
