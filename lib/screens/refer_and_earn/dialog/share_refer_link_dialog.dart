import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/theme/app_colors.dart';

class ShareReferLinkDialog extends StatefulWidget {
  const ShareReferLinkDialog({Key? key}) : super(key: key);

  @override
  State<ShareReferLinkDialog> createState() => _ShareReferLinkDialogState();
}

class _ShareReferLinkDialogState extends State<ShareReferLinkDialog> {

  final List socialList=[
    'assets/images/refer_and_earn/wtsapp.png',
    'assets/images/refer_and_earn/face.png',
    'assets/images/refer_and_earn/chat.png',
    'assets/images/refer_and_earn/msg.png'

  ];

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
      child: Dialog(
        backgroundColor: const Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Spacer(),
               Icon(Icons.close,size: 30,color: AppColors.fullBlackColor,),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0x4ED1C24)),
                  child: const Center(
                    child:Icon(Icons.share,color: Color(0xffED1C24),),
                  ),),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: ReusableText(
                  title:
                  'Share Referral Link',
                  color:Color(0xff303030),weight: FontWeight.w500,size: 14,alignment: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(socialList.length, (index) => Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(socialList[index]),
                    const SizedBox(width: 10,)
                  ],
                ))
              ),
              const SizedBox(
                height: 25,
              ),

              Container(
                width: MediaQuery.sizeOf(context).width*0.30,padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffED1C24)
              ),
               child: const Center(
                  child: ReusableText(
                    title:
                    'OK',
                    color:Color(0xffFFFFFF),weight: FontWeight.w500,size: 16,alignment: TextAlign.center,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
