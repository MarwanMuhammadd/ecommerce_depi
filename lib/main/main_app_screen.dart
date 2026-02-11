import 'package:ecommerce_depi/core/constant/app_images.dart';
import 'package:ecommerce_depi/core/styles/app_colors.dart';
import 'package:ecommerce_depi/core/widgets/svg_active_icon.dart';
import 'package:ecommerce_depi/feature/explore/page/explore_screen.dart';
import 'package:ecommerce_depi/feature/home/page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screen = [
    HomeScreen(),
    ExploreScreen(),
    Center(child: Text("data")),
    Center(child: Text("data")),
    Center(child: Text("data")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 20,
              spreadRadius: 0,
              offset: Offset(0, -6),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.homeSvg),
              activeIcon: SvgActiveIcon(
                path: AppImages.homeSvg,
                color: AppColors.primaryColor,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.exploreSvg),
              activeIcon: SvgActiveIcon(
                path: AppImages.exploreSvg,
                color: AppColors.primaryColor,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.cartSvg),
              activeIcon: SvgActiveIcon(
                path: AppImages.cartSvg,
                color: AppColors.primaryColor,
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.heartSvg),
              activeIcon: SvgActiveIcon(
                path: AppImages.heartSvg,
                color: AppColors.primaryColor,
              ),
              label: "Heart",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.personSvg),
              activeIcon: SvgActiveIcon(
                path: AppImages.personSvg,
                color: AppColors.primaryColor,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
