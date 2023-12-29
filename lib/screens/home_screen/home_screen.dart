import 'package:flutter/material.dart';
import 'package:skin/constant/reusable_text/reusable_text.dart';
import 'package:skin/screens/book_a_consaltant/book_a_consaltant.dart';
import 'package:skin/screens/customise_skincare/customise_skincare.dart';
import 'package:skin/screens/ingrediant_checker/ingredient_cheker_screen.dart';
import 'package:skin/screens/quiz_analysis/start_analysis.dart';
import 'package:skin/screens/skin_care_collection/skincare_collection.dart';
import 'package:skin/screens/track_order/track_order.dart';
import 'package:skin/theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List categoriesList = [
    'Skin Type\nChecker Quiz',
    'Ingredient\nChecker',
    'Customized \nproduct listing',
    'General Skincare\ncollection',
    'Product checkout\nprocess',
    'Delivery tracking',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(

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
                      title: 'Home',
                      weight: FontWeight.w600,
                      size: 24,
                      color: Color(0xffEFEFEF),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReusableText(
                title: 'Categories',
                weight: FontWeight.w500,
                size: 14,
                color: AppColors.buttonColor,
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categoriesList.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                        _currentIndex == 0
                            ? Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                                return const StartAnalysis();
                              }))
                            : _currentIndex == 1
                                ? Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                    return const IngredientCheckerScreen();
                                  }))
                                :

                        _currentIndex == 2
                            ? Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const CustomiseSkinCare();
                            }))
                        :
                        _currentIndex == 3
                            ? Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const SkinCareCollection();
                            }))
                        :_currentIndex == 4
                                    ? Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                        return const BookaAConsaltant();
                                      })):
                        _currentIndex == 5
                            ? Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const TrackOrder();
                            }))


                                    : Container();
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffBFBEBD)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffFFE1BD),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ReusableText(
                            title: categoriesList[index],
                            alignment: TextAlign.center,
                            size: 12,
                            weight: FontWeight.w600,
                            color: AppColors.fullBlackColor,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
