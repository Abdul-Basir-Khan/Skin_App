import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/track_order/order_status.dart';
import 'package:skin/theme/app_colors.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  final List imageList=[
    'assets/images/tract_order/Group (6).png',
    'assets/images/tract_order/Group (8).png',
    'assets/images/tract_order/Group (7).png',
  ]
  ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Stack(
          children: [
            Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
            ),
           Positioned(
             left: 0,right: 0,
              top: 110,

              child
                  : Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableText(
                title: "Track your Delivery",
                weight: FontWeight.w600,
                size: 32,
                color: Color(0xffFFFFFF),
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const ReusableText(
                  title: "Please enter your tracking number",
                  weight: FontWeight.w400,
                  size: 20,
                  color: AppColors.fullBlackColor,
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter track number',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color:  Color(0xff948F8F),),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Color(0xff948F8F))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color: Color(0xff948F8F))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                          const BorderSide(color:  Color(0xff948F8F))),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image(image: AssetImage("assets/images/tract_order/Group (3).png")),
                    Image(image: AssetImage("assets/images/tract_order/Group (4).png")),
                    Image(image: AssetImage("assets/images/tract_order/Group (3).png")),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const ReusableText(
                      title: "My service",
                      weight: FontWeight.w600,
                      size: 9,
                      color: AppColors.buttonColor,
                    ),
                    const Spacer(),
                    const ReusableText(
                      title: "View all",
                      weight: FontWeight.w600,
                      size: 9,
                      color: Color(0xffC8482C),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffC8482C)
                      ),
                      child: const Center(
                        child: Icon(Icons.arrow_forward,color: AppColors.fullWhiteColor,size: 15,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(3, (index) => GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrderStatus()));
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width*0.30,
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.mainColor
                    ),
                    child: Column(
                      children: [

                        Container(
                          height:65,
                          width: 65,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff4158CC),

                          ),
                          child:  Image(

                            image:  AssetImage(imageList[index],),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const ReusableText(
                          title: "Courier",
                          weight: FontWeight.w600,
                          size: 8,
                          color: Color(0xffFFFFFF),
                        ),
                        const SizedBox(height: 3,),
                        const ReusableText(
                          title: "Safe Delivery",
                          weight: FontWeight.w400,
                          size: 7,
                          color: Color(0xffFFFFFF),
                        ),
                      ],
                    ),
                    ),
                  ),
                  ),
                )


              ],
            ),
          ),
        )

      ],
    )));
  }
}
