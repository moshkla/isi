import 'package:flutter/material.dart';
import 'package:isi/Screens/Home/homeScreen.dart';

import 'introItem.dart';
import 'introList.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static const routeName = "/Intro_Screen";

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final _pageController = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF054727),
      body: SafeArea(
        child: Column(
          children: [
            _currentIndex >= 1
                ? Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomePage())),
                          child: Text(
                            "Skip",
                            style: TextStyle(color: Color(0xfff29a94), fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox(),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentIndex = index),
                children: introItems
                    .map((item) => IntroItem(
                          description: item.description,
                          imageUrl: item.imagePath,
                        ))
                    .toList(),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.04,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _currentIndex == 2
                      ? GestureDetector(
                          onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomePage())),
                          child: Container(
                            width: 130,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xfff29a94),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      : SizedBox()
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .085,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 13,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(90)),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 13,
                            decoration: BoxDecoration(
                                color: Color(0xfff29a94),
                                borderRadius: _currentIndex == 0
                                    ? BorderRadius.circular(90)
                                    : BorderRadius.horizontal(
                                        left: Radius.circular(90))),
                          ),
                          Container(
                            width: 30,
                            height: 13,
                            decoration: BoxDecoration(
                                color: _currentIndex >= 1
                                    ? Color(0xfff29a94)
                                    : Colors.white,
                                borderRadius: _currentIndex >= 2
                                    ? BorderRadius.circular(0)
                                    : BorderRadius.horizontal(
                                        right: Radius.circular(90))),
                          ),
                          _currentIndex >= 2
                              ? Container(
                                  width: 30,
                                  height: 13,
                                  decoration: BoxDecoration(
                                      color: Color(0xfff29a94),
                                      borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(90))),
                                )
                              : Container()
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    _currentIndex < 2
                        ? Container(
                            width: 30,
                            height: 13,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                          )
                        : SizedBox(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
