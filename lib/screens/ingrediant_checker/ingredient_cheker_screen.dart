import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_button/reusable_button.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/ingrediant_checker/analysis_complete.dart';
import 'package:skin/screens/ingrediant_checker/dialogs/pro_clogging_found_dialog.dart';
import 'package:skin/screens/ingrediant_checker/dialogs/success_dialog.dart';
import 'package:skin/theme/app_colors.dart';

class IngredientCheckerScreen extends StatefulWidget {
  const IngredientCheckerScreen({super.key});

  @override
  State<IngredientCheckerScreen> createState() =>
      _IngredientCheckerScreenState();
}

class _IngredientCheckerScreenState extends State<IngredientCheckerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: ListView(
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
                              shape: BoxShape.circle, color: Color(0xffFFE1BD)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ReusableText(
                        title: "Skin care ",
                        weight: FontWeight.w600,
                        size: 24,
                        color: Color(0xffEFEFEF),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const ReusableText(
                        title: 'Ingredient Checker',
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
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.55,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const ProCloggingFountDialog();
                            },
                          );
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        width: MediaQuery.sizeOf(context).width * 1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffFFFFFF),
                        ),
                        child: const Center(
                          child: ReusableText(
                            title:
                                'We have simplified the process of analyzing any product by providing a science-based analysis of its ingredients',
                            alignment: TextAlign.center,
                            weight: FontWeight.w600,
                            size: 18,
                            color: AppColors.fullBlackColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const ReusableText(
                      title:
                          'Paste in the ingredients of your product for a detailed analysis.',
                      weight: FontWeight.w600,
                      size: 18,
                      color: AppColors.buttonColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Paste your Ingredient here',
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: AppColors.fullBlackColor),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: AppColors.buttonColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: AppColors.buttonColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: AppColors.buttonColor)),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          _showDialogAndNavigate(context);
                          },
                        child: const ReusableButton(
                            textRequired: 'Check Ingredients'))
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




Future<void> _showDialogAndNavigate( context) async {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const SuccessDialog();
    },
  );

  // Delay for 3 seconds
  await Future.delayed(const Duration(seconds: 3));

  // Close the dialog
  Navigator.pop(context);

  // Navigate to next page
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  const AnalysisComplete()),
  );
}
