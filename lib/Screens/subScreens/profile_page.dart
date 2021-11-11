// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_meal_monkey/styles/styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: mainColor,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Profile",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.shoppingCart)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                "images/p1.png",
              ),
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.edit,
                  color: mainColor,
                  size: 15,
                ),
                Text(
                  "Edit Profile",
                  style: TextStyle(color: mainColor, fontSize: 15),
                ),
              ],
            ),
            Text(
              "Hi there Emilla!",
              style: TextStyle(color: primaryFontColor, fontSize: 20),
            ),
            Text(
              "Sign Out",
              style: TextStyle(color: placeholderColor, fontSize: 10),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: TextField(
                decoration: InputDecoration(
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(50)
//                  ),
                  labelText: 'Name',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(22), // Added this
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: TextField(
                decoration: InputDecoration(
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(50)
//                  ),
                  labelText: 'Email',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(22), // Added this
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(50)
//                  ),
                  labelText: 'Mobile No',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(22), // Added this
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: TextField(
                decoration: InputDecoration(
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(50)
//                  ),
                  labelText: 'Address',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(22), // Added this
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: TextField(
                decoration: InputDecoration(
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(50)
//                  ),
                  labelText: 'password',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(22), // Added this
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kScaffoldPadding),
              child: TextField(
                decoration: InputDecoration(
//                  border: OutlineInputBorder(
//                    borderRadius: BorderRadius.circular(50)
//                  ),
                  labelText: 'confirm password',
                  isDense: true, // Added this
                  contentPadding: EdgeInsets.all(22), // Added this
                ),
              ),
            ),
            //TextButton(onPressed: (){}, child: Text("Edit Profile",style: TextStyle(color: mainColor,fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
