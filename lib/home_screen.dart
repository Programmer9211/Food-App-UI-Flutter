import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      color: lightGreen,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: lightGreen,
          body: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                header(size),
                Container(
                  width: size.width / 1.1,
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: const TextSpan(
                      text: "Good Morning,\n",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Aditya Chaudhary",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 30,
                ),
                customTextField(size),
                SizedBox(
                  height: size.height / 50,
                ),
                headingText(size),
                Expanded(
                  child: SizedBox(
                    width: size.width / 1.1,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return gridViewItemBuider(size, data[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: size.height / 10,
            width: size.width,
            alignment: Alignment.topCenter,
            child: customBottomNavigationBar(size),
          ),
        ),
      ),
    );
  }

  Widget gridViewItemBuider(Size size, GridViewBuilderData data) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: size.height / 7.25,
              width: size.width / 2.2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(data.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: size.height / 40,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  data.itemName,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Text(
                        data.description,
                        maxLines: 3,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Icon(Icons.star, color: orange),
                      Text(
                        data.rating,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customBottomNavigationBar(Size size) {
    return Container(
      height: size.height / 15,
      width: size.width / 1.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            height: size.height / 20,
            width: size.width / 4.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: green,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 28,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            ),
          ),
          const Expanded(
              child: SizedBox(
            child: Icon(
              Icons.wallet_giftcard,
              color: green,
            ),
          )),
          const Expanded(
              child: SizedBox(
            child: Icon(
              Icons.restaurant,
              color: green,
            ),
          )),
          const Expanded(
              child: SizedBox(
            child: Icon(
              Icons.notifications_sharp,
              color: green,
            ),
          )),
        ],
      ),
    );
  }

  Widget headingText(Size size) {
    return SizedBox(
      height: size.height / 20,
      width: size.width,
      child: Row(
        children: [
          SizedBox(
            width: size.width / 10,
            child: const Divider(
              color: darkGreen,
              thickness: 1.5,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "What we recommend !!",
              style: TextStyle(
                fontSize: 15,
                color: darkGreen,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Expanded(
              child: Divider(
            color: darkGreen,
            thickness: 1.5,
          )),
        ],
      ),
    );
  }

  Widget header(Size size) {
    return Container(
      height: size.height / 10,
      width: size.width / 1.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Icon(
            Icons.account_circle,
            color: Colors.white,
            size: 32,
          ),
        ],
      ),
    );
  }

  Widget customTextField(Size size) {
    return Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: size.height / 16,
        width: size.width / 1.14,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Find Something Healthy...",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: green,
              ),
            ),
            Icon(
              Icons.search,
              color: green,
            )
          ],
        ),
      ),
    );
  }
}
