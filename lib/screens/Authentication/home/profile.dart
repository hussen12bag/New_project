import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Authentication/home/home.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/theme/fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> title = [
    ' Edit Account',
    'Language',
    'Favourite',
    'Cources',
    'Contact us',
    ' Logout',
    'الشروط والأحكام',
    'تواصل معنا',
    'تسجيل الخروج'
  ];
  List<Icon> icon = [
    Icon(
      Icons.edit,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      CupertinoIcons.arrowtriangle_down_square,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      CupertinoIcons.heart,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.menu_book_sharp,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.call,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.logout,
      size: 20,
      color: AppColors.Red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: AppFonts.DarkBLue_20,
                  ),
                  Text(
                    "Edit Acount",
                    style: AppFonts.DarkBLue_16,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(52),
                        image: DecorationImage(
                            image: AssetImage("assets/images/person.png"))),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Marya alyagshe",
                        style: AppFonts.DarkBLue_16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "marya@gmail.com ",
                        style: AppFonts.grey_14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        if (index == 8) {
                          // prefs!.clear();
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            },
                          ), (route) => false);
                        }
                      },
                      child: InkWell(
                        // onTap: () {
                        //   if (index == 8) {
                        //     prefs!.clear();
                        //     Navigator.of(context).pushAndRemoveUntil(
                        //         MaterialPageRoute(
                        //       builder: (context) {
                        //         return Signin();
                        //       },
                        //     ), (route) => false);
                        //   }
                        // },
                        child: Container(
                          height: 40,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    icon[index],
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${title[index]}',
                                      style: index == 8
                                          ? AppFonts.Red_16
                                          : AppFonts.DarkBLue_16,
                                    ),
                                  ],
                                ),
                                // if (index != 8) ...[
                                //   IconButton(
                                //     onPressed: () {
                                //       // if (index == 1) {
                                //       //   Navigator.of(context).push(MaterialPageRoute(
                                //       //     builder: (context) {
                                //       //       return Notices();
                                //       //     },
                                //       //   ));
                                //       }, icon: null,
                                // if (index == 0) {
                                //   Get.to(EditAccount());
                                // }
                                // if (index == 2) {
                                //   Get.to(Favo());
                                // }
                                // if (index == 4) {
                                //   Get.to(Aboutapp());
                                // }
                                // if (index == 5) {
                                //   Get.to(Private());
                                // }
                                // if (index == 6) {
                                //   Get.to(Conditions());
                                // }
                                // if (index == 7) {
                                //   Get.to(Contact());
                                // }
                                // },
                                // icon: Icon(
                                //   Icons.arrow_back_ios_new_rounded,
                                //   size: 17,
                                // ),
                                // ),
                              ]
                              // ],
                              ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
