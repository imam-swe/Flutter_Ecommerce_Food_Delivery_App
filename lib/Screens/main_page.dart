// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_meal_monkey/Screens/subScreens/HomePage.dart';
import 'package:ecommerce_meal_monkey/Screens/subScreens/menu_page.dart';
import 'package:ecommerce_meal_monkey/Screens/subScreens/more_page.dart';
import 'package:ecommerce_meal_monkey/Screens/subScreens/offers_page.dart';
import 'package:ecommerce_meal_monkey/Screens/subScreens/profile_page.dart';
import 'package:ecommerce_meal_monkey/styles/styles.dart';
import 'package:ecommerce_meal_monkey/model/main_menu_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:
      body: _getBody(),
      //backgroundColor: MaterialStateProperty.all<Color>(mainColor),
      floatingActionButton: FloatingActionButton(
        backgroundColor: currentIndex == -1 ? mainColor : secondaryFontColor,
        onPressed: () {
          setState(() {
            currentIndex = -1;
          });
        },
        child: const Icon(FontAwesomeIcons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...MainMenuModel.list.map((MainMenuModel data) {
              return data.isBlank
                  ? const SizedBox(
                      width: 10,
                    )
                  : InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = data.index;
                        });
                        // ignore: avoid_print
                        print(data.index.toString());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //SizedBox(height: 10,),
                            Icon(
                              data.icon,
                              color: currentIndex == data.index
                                  ? mainColor
                                  : secondaryFontColor,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              data.label!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: currentIndex == data.index
                                          ? mainColor
                                          : secondaryFontColor),
                            )
                          ],
                        ),
                      ),
                    );
            })
          ],
        ),
      ),
    );
  }

  _getBody() {
    switch (currentIndex) {
      case 0:
        return const MenuHome();
      case 1:
        return Offers();
      case 2:
        return ProfilePage();
      case 3:
        return MorePage();
      default:
        return const HomePage();
    }
  }
}
