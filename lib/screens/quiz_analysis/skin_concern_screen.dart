import 'package:flutter/material.dart';
import 'package:skin/constant/resuable_for_screen/reusable_for_screen.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/quiz_analysis/acne_screen.dart';
import 'package:skin/theme/app_colors.dart';

class SkinConcernScreen extends StatefulWidget {
  const SkinConcernScreen({super.key});

  @override
  State<SkinConcernScreen> createState() => _SkinConcernScreenState();
}

class _SkinConcernScreenState extends State<SkinConcernScreen> {
  final List<String> concernList = [
    'Acne Breakouts',
    'Clogged pores',
    'Dryness',
    'Excess Oil',
    'Reduce Irritation',
    'Redness',
    'Maintain & Glow',
    'Uneven Skin tone',
  ];

  Set<int> selectedIndices = Set();

  @override
  Widget build(BuildContext context) {
    return ReusableForScreen(
      requiresWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ReusableText(
            title: 'What are your skin concerns? ',
            weight: FontWeight.w600,
            size: 18,
            color: AppColors.buttonColor,
          ),
          const SizedBox(height: 10,),
          const Center(
            child: ReusableText(
              title: '(choose all that apply)',
              weight: FontWeight.w600,
              size: 18,
              color: AppColors.buttonColor,
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.37,
            child: ListView.builder(
              itemCount: concernList.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedIndices.contains(index)) {
                        selectedIndices.remove(index);
                      } else {
                        selectedIndices.add(index);
                      }
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    margin: const EdgeInsets.only(bottom: 10),
                    width: MediaQuery.sizeOf(context).width * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectedIndices.contains(index)
                          ? AppColors.buttonColor
                          : AppColors.fullWhiteColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: concernList[index],
                          weight: FontWeight.w600,
                          size: 18,
                          color: selectedIndices.contains(index)
                              ? AppColors.fullWhiteColor
                              : AppColors.fullBlackColor,
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.fullWhiteColor,
                            border: Border.all(
                              color: selectedIndices.contains(index)
                                  ? AppColors.fullWhiteColor
                                  : AppColors.buttonColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const AcneScreen()));

            },
            child: const ReusableButton(textRequired: 'Start'),
          ),
        ],
      ),
    );
  }
}
