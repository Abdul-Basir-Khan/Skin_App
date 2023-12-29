import 'package:casa_vertical_stepper/casa_vertical_stepper.dart';
import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';


class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key});

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {

  final stepperList = [
    StepperStep(
      status: StepStatus.complete,
      leading: const Icon(Icons.circle,color: Color(0xffED1C24),),
      view: const ReusableText(title: 'USD Card',size: 11,weight: FontWeight.w500,color: Color(0xff666666),), title:const ReusableText(title: 'Currency Type:',size: 13,weight: FontWeight.w500,color: Color(0xff303030),)
    ),
    StepperStep(
      status: StepStatus.complete,
      leading: const Icon(Icons.circle,color: Color(0xffED1C24),),
      view: const ReusableText(title: 'Jan 06, 2022\n8:00 AM',size: 11,weight: FontWeight.w500,color: Color(0xff666666),), title:const ReusableText(title: 'Requested On:',size: 13,weight: FontWeight.w500,color: Color(0xff303030),)
    ),
    StepperStep(
      status: StepStatus.complete,
      leading: const Icon(Icons.circle,color: Color(0xffED1C24),),
      view: const ReusableText(title: 'Jan 06, 2022\n8:00 AM',size: 11,weight: FontWeight.w500,color: Color(0xff666666),), title:const ReusableText(title: 'Card Produced',size: 13,weight: FontWeight.w500,color: Color(0xff303030),)
    ),
    StepperStep(
      status: StepStatus.complete,
      leading: const Icon(Icons.circle,color: Color(0xffED1C24),),
      view: const ReusableText(title: 'Jan 06, 2022\n8:00 AM',size: 11,weight: FontWeight.w500,color: Color(0xff666666),), title:const ReusableText(title: 'Shipped',size: 13,weight: FontWeight.w500,color: Color(0xff303030),)
    ),
    StepperStep(
      status: StepStatus.upcoming,
      leading: const Icon(Icons.circle,color: Color(0xffED1C24),),
      view: const ReusableText(title: 'Jan 06, 2022\n8:00 AM',size: 11,weight: FontWeight.w500,color: Color(0xff666666),), title:const ReusableText(title: 'Delivered',size: 13,weight: FontWeight.w500,color: Color(0xff303030),)
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: ListView
        (
      children: [
        Stack(
          children: [
            const Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: AppColors.fullWhiteColor),
                    child:
                    const Center(child: Icon(Icons.arrow_back_ios,color: Color(0xff303030),)),
                  ),
                  const Spacer(
                    
                  )
                ],
              ),
            ),
            const Positioned(
              top: 60,left: 0,right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ReusableText(title: 'Order Status',weight: FontWeight.w500,size: 20,color: Color(0xffFFFFFF),),
                  ReusableText(title: 'Receipt Number: 1254S56',weight: FontWeight.w400,size: 13,color: Color(0xffEFEFEF),),
                  SizedBox(height: 6,),
                  ReusableText(title: 'Estimate Delivery',weight: FontWeight.w500,size: 13,color: Color(0xffFFFFFF),),
                  SizedBox(height: 2,),
                  ReusableText(title: 'Jan 06, 2022 | 8:00AM',weight: FontWeight.w500,size: 11,color: Color(0xffFFFFFF),),
                  SizedBox(height: 15,),
                  Image(image: AssetImage("assets/images/tract_order/Group (8).png"))
                ],
              ),
            ),


          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CasaVerticalStepperView(
                    steps: stepperList,
                    seperatorColor: const Color(0xffD2D5DF),
                    showStepStatusWidget: false,
                  ),
                ),
                const ReusableButton(textRequired: 'Next'),
                const SizedBox(height: 10,)

              ],
            ),
          ),
        )
      ],
    ),));
  }
}
