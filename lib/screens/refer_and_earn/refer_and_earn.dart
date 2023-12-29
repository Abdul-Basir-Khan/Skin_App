import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/refer_and_earn/dialog/share_refer_link_dialog.dart';
import 'package:skin/theme/app_colors.dart';


class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({super.key});

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {

  bool _isActive=false;

  final List imagesList=[
    'assets/images/refer_and_earn/Ellipse 47.png',
    'assets/images/refer_and_earn/Ellipse 48.png',
    'assets/images/refer_and_earn/Ellipse 49.png',
    'assets/images/refer_and_earn/Ellipse 50.png',
    'assets/images/refer_and_earn/Ellipse 51.png',
    'assets/images/refer_and_earn/Ellipse 52.png',
    'assets/images/refer_and_earn/Ellipse 53.png',
    'assets/images/refer_and_earn/Ellipse 54.png',
    'assets/images/refer_and_earn/Ellipse 55.png',
    'assets/images/refer_and_earn/Ellipse 56.png',
  ];
  final List namesList=[
    'Cameron Williamson',
    'Wade Warren',
    'Esther Howard',
    'Annette Black',
    'Darlene Robertson',
    'Jane Cooper',
    'Floyd Miles',
    'Courtney Henry',
    'Ronald Richards',
    'Ralph Edwards',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        extendBody: true,body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/dashboard/Rectangle 17.png"),
              ),
              Positioned(
                top: 20,left: 20,
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.fullWhiteColor),
                      child:
                      const Center(child: Icon(Icons.arrow_back_ios,color: Color(0xff303030),)),
                    ),

                    SizedBox(width: MediaQuery.sizeOf(context).width*0.23,),
                    const ReusableText(title: 'Refer & Earn',weight: FontWeight.w500,size: 20,color: Color(0xff303030),),

                  ],
                ),

              ),
        const Positioned(
          top: 70,
          left: 150,right: 0,
          child: ReusableText(title: 'Invite Friend',weight: FontWeight.w400,size: 15,color: Color(0xff303030),),
        ),
const Positioned(
top: 90,
    left: 0,right: 0,
    child: Image(image: AssetImage("assets/images/refer_and_earn/invite.png"))),

            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.53,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: ReusableText(title: 'INVITE A FRIEND AND GET A LIFETIME COMMISSIONS FROM EVERY PURCHASES/ TRANSACTIONS THEY MAKE ON CORNEB.',alignment: TextAlign.center,weight: FontWeight.w400,size: 14,color: Color(0xff666666),))
                        ,
                        SizedBox(height: 20,),
                        Center(child: ReusableText(title: 'Share your unique referral code which is your Corneb ID, or share links with as many people as you’d like and start earning your lifetime commissions from their transactions.',alignment: TextAlign.center,weight: FontWeight.w400,size: 12,color: Color(0xff666666),))
                        ,


                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: (){

                       setState(() {
                         showModalBottomSheet(
                           isScrollControlled: true,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15)),
                           backgroundColor: const Color(0xffFFFFFF),
                           context: context,
                           builder: (BuildContext context) {
                             return Container(
                               height: MediaQuery
                                   .of(context)
                                   .size
                                   .height * 0.83,
                               margin: const EdgeInsets.symmetric(horizontal: 15),
                               child: ListView(
                                 children: [

                                   Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Row(
                                           children: [
                                             const ReusableText(
                                               title: 'Cancel',
                                               size: 13,
                                               weight: FontWeight.w400,
                                               color: Color(0xff666666),
                                             ),
                                             const Spacer(),
                                             const ReusableText(
                                               title: 'Invite a Friend',
                                               size: 16,
                                               weight: FontWeight.w400,
                                               color: Color(0xff303030),
                                             ),
                                             const Spacer(),
                                             Container(
                                                 padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(5),
                                                   border:Border.all(color:_isActive?const Color(0xffED1C24): const Color(0xffABA7AF)),
                                                   color: const Color(0x000000),
                                                 ),
                                                 child:Center(
                                                   child:  ReusableText(
                                                     title: 'Invite',
                                                     size: 12,
                                                     weight: FontWeight.w300,
                                                     color: _isActive?const Color(0xffED1C24): const Color(0xffABA7AF),
                                                   ),
                                                 )
                                             )
                                           ],
                                         ),
                                         const SizedBox(height: 10,),
                                         SizedBox(
                                           height: 44,
                                           child: TextField(
                                             decoration: InputDecoration(
                                                 prefixIcon: const Icon(Icons.search,color: Colors.black,),
                                                 hintText: 'Search',
                                                 hintStyle: const TextStyle(
                                                     fontWeight: FontWeight.w400
                                                     ,fontSize: 13,color:Color(0xffCACACA)
                                                 ),
                                                 border:OutlineInputBorder(
                                                     borderRadius: BorderRadius.circular(22),
                                                     borderSide: const BorderSide(
                                                         color: Color(0xffE5E0EB)
                                                     )
                                                 ),
                                                 focusedBorder: OutlineInputBorder(
                                                     borderRadius: BorderRadius.circular(22),
                                                     borderSide: const BorderSide(
                                                         color: Color(0xffE5E0EB)
                                                     )
                                                 ),
                                                 enabledBorder: OutlineInputBorder(


                                                     borderRadius: BorderRadius.circular(22),
                                                     borderSide: const BorderSide(
                                                         color: Color(0xffE5E0EB)
                                                     )
                                                 )
                                             ),
                                           ),
                                         ),

                                         const SizedBox(height: 10,),
                                         Column(

                                           children:List.generate(imagesList.length, (index) => Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Row(
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   CircleAvatar(
                                                     radius: 20,backgroundImage: AssetImage(imagesList[index].toString()),
                                                   ),
                                                   const SizedBox(width: 15,),
                                                   ReusableText(title: namesList[index],weight: FontWeight.w400,size: 16,color: const Color(0xff303030),),
                                                   const Spacer(),
                                                   StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
                                                     return GestureDetector(
                                                       onTap: (){
                                                         setState((){
                                                           _isActive=!_isActive;
                                                         });
                                                       },
                                                       child
                                                           : Container(
                                                         width: 23,height: 23,
                                                         decoration: BoxDecoration(
                                                             border: Border.all(color: const Color(0xff000000)),
                                                             shape: BoxShape.circle,color: const Color(0x000000)
                                                         ),
                                                         child: Center(
                                                           child: _isActive?
                                                           Container(
                                                             height: 5,width: 5,
                                                             decoration: const BoxDecoration(
                                                                 shape: BoxShape.circle,color: Color(0xff000000)
                                                             ),
                                                           ):Container(),
                                                         ),

                                                       ),
                                                     );
                                                   },)
                                                 ],
                                               ),
                                               const SizedBox(height: 10,),
                                             ],
                                           )),
                                         )

                                       ],
                                     ),
                                   ),

                                 ],
                               ),
                             );
                           },
                         );
                       });
                      },
                      child: const ReusableButton(textRequired: 'Invite a friend')),

                  const SizedBox(height: 10,),
                  GestureDetector(

                      onTap: (){
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const ShareReferLinkDialog();
                            },
                          );

                        });
                      },
                      child: const ReusableButton(textRequired: 'Copy my referral link')),
                ],
              ),
            ),
          ),
        ],
      ),),
    );
  }
}
