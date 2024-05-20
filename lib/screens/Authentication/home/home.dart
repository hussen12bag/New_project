import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/custom_form_field.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:flutter_application_1/theme/fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Center(
                  child: Text(
                    "Home",
                    style: AppFonts.DarkBLue_16,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.blur_circular_rounded),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Find your Best Online Cource",
                style: AppFonts.DarkBLue_20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomFormField(
                label: Text(
                  "Search",
                  style: AppFonts.DarkBLue_20,
                ),
                prefix_icon: Icon(
                  Icons.search,
                  color: AppColors.DarkBlue,
                ),
                hint: "Tab To searsh",
                cursor_color: AppColors.DarkBlue,
                hintStyle: AppFonts.grey_14,
                index: 0,
                style: AppFonts.light_grey_12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Top Categories",
                    style: AppFonts.DarkBLue_20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      child: Text(
                        "See all",
                        style: AppFonts.DarkBLue_16,
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 100,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/1.jpg"))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/2.jpg"))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/3.jpg"))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpg"))),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Popular Cource",
                    style: AppFonts.DarkBLue_20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      child: Text(
                        "See all",
                        style: AppFonts.DarkBLue_16,
                      ),
                    )),
              ],
            ),
            Container(
              height: 400,
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/1.jpg"))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Ui Ux")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/2.jpg"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Web Development")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/3.jpg"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Flutter Development")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpg"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("python Development")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/1.jpg"))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Ui Ux")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/2.jpg"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Web Development")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/3.jpg"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Flutter Development")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/4.jpg"))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("python Development")
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
