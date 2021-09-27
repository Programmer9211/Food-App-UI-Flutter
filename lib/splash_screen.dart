import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/const.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      color: darkGreen,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: size.height / 3,
                  width: size.width,
                  child: Stack(
                    children: [
                      Container(
                        height: size.height / 6,
                        width: size.height / 3.4,
                        decoration: const BoxDecoration(
                          color: darkGreen,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(180),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        child: Container(
                          height: size.height / 4.5,
                          width: size.height / 6,
                          decoration: const BoxDecoration(
                            color: darkGreen,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(150),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height / 15,
                ),
                const Text(
                  "Food App",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: size.height / 5,
                ),
                Container(
                  height: size.height / 100,
                  width: size.width / 2.4,
                  decoration: BoxDecoration(
                    border: Border.all(color: darkGreen, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    color: darkGreen,
                  ),
                ),
                SizedBox(
                  height: size.height / 50,
                ),
                const Text(
                  "' Fast And Effective '",
                  style: TextStyle(
                    fontSize: 15,
                    color: darkGreen,
                  ),
                ),
                SizedBox(
                  height: size.height / 12,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/lettuce.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
