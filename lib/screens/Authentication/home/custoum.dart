import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Authentication/cv.dart';
import 'package:flutter_application_1/screens/Authentication/home/home.dart';
import 'package:flutter_application_1/screens/Authentication/home/laycour.dart';
import 'package:flutter_application_1/screens/Authentication/home/more.dart';
import 'package:flutter_application_1/screens/Authentication/home/profile.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/theme/fonts.dart';

class CustomBottomTabBar extends StatefulWidget {
  int? index;
  CustomBottomTabBar({this.index});
  @override
  State<CustomBottomTabBar> createState() => _CustomBottomTabBarState();
}

class _CustomBottomTabBarState extends State<CustomBottomTabBar> {
  late int _selectedIndex = 0;
  @override
  void initState() {
    if (widget.index != null) {
      print('done');
      _selectedIndex = widget.index!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
          backgroundColor: AppColors.DarkBlue,
          items: [
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(
                Icons.home_outlined,
                color: AppColors.DarkBlue,
              ),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(
                Icons.book,
                color: AppColors.DarkBlue,
              ),
              label: 'Cv',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(
                Icons.menu_book_sharp,
                color: AppColors.DarkBlue,
              ),
              label: 'My Cources',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(
                Icons.person,
                color: AppColors.DarkBlue,
              ),
              label: 'Profile',
            ),
            CurvedNavigationBarItem(
              labelStyle: AppFonts.DarkBLue_12,
              child: Icon(
                Icons.question_mark_sharp,
                color: AppColors.DarkBlue,
              ),
              label: 'More',
            ),
          ],
          onTap: (index) {
            _selectedIndex = index;
            setState(() {});
          },
        ),
        body: _selectedIndex == 0
            ? const Home()
            : _selectedIndex == 1
                ? Mycv()
                : _selectedIndex == 2
                    ? const Cources()
                    : _selectedIndex == 3
                        ? const Profile()
                        : More());
  }
}
