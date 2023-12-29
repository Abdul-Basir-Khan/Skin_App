import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skin/screens/home_screen/home_screen.dart';
import 'package:skin/screens/profile/profile_main.dart';

import '../constant/reusable_text/reusable_text.dart';
import '../theme/app_colors.dart';


class BottomNavigationAppBar extends StatefulWidget {
  @override
  _BottomNavigationAppBarState createState() => _BottomNavigationAppBarState();
}

class _BottomNavigationAppBarState extends State<BottomNavigationAppBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const  ProfileMain(),

  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Material(
          elevation: 2.0,
          shape: const CircleBorder(),
          color: Colors.white,
          child: FloatingActionButton(

            onPressed: () {  },
            backgroundColor: AppColors.fullWhiteColor,
            child: const Center(
              child: Icon(Icons.shopping_cart_outlined,color: AppColors.fullBlackColor,),
            ),

          ),
        ),
        backgroundColor: const Color(0xffE5E5E5),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          height: 70,
          child: Container(
            color: const Color(0xf10ffffff),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomTab(onTap:(){
                    onTabTapped(0);
                  },activeColor: _currentIndex==0?const Color(0xffEB3030):AppColors.fullBlackColor, title: 'Home', icon: 'assets/icon/home/home 1.svg' ,),
                  BottomTab(onTap:(){
                    onTabTapped(1);
                  },activeColor: _currentIndex==1?const Color(0xffEB3030):AppColors.fullBlackColor, title: 'Collections', icon: 'assets/icon/home/heart 1.svg' ,),
                  BottomTab(onTap:(){
                    onTabTapped(2);
                  },activeColor: _currentIndex==2?const Color(0xffEB3030):AppColors.fullBlackColor, title: 'Search', icon: 'assets/icon/home/search 1.svg' ,),
                  BottomTab(onTap:(){
                    onTabTapped(3);
                  },activeColor: _currentIndex==3?const Color(0xffEB3030):AppColors.fullBlackColor, title: 'Profile', icon: 'assets/icon/home/Vector.svg' ,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTab extends StatelessWidget {
  final String title;
  final Color activeColor;
  final String icon;
  final VoidCallback onTap;
  const BottomTab({
    super.key,
     required this.title, required this.activeColor, required this.icon, required this.onTap,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(height: 5,),
         SvgPicture.asset(
           icon,
           fit:BoxFit.cover,

           color: activeColor,),
          const SizedBox(height: 4,),
          ReusableText(title: title,size: 12,weight: FontWeight.w400,color: activeColor,),
        ],
      ),
    );
  }
}

