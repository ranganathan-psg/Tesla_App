import 'package:coast/coast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_demo/constants/colorConstant.dart';
import 'package:tesla_demo/pages/homescreen.dart';
import 'package:tesla_demo/pages/lastScreen.dart';
import 'package:tesla_demo/pages/secondPage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
    final _coastController = CoastController();

    PageController _pageController = PageController();
    void nextPage(page) {
      // _pageController.animateToPage(_pageController.page!.toInt() + 1,
      //     duration: Duration(milliseconds: 800), curve: Curves.easeIn);

      _coastController.animateTo(
          beach: page,
          duration: Duration(milliseconds: 1000),
          curve: Curves.easeIn);
    }

    final _beaches = [
      Beach(builder: (context) => HomeScreen(nextPage)),
      Beach(builder: (context) => SecondScree(nextPage)),
      Beach(builder: (context) => LastScreen()),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0XffF0F1EF),
      //   elevation: 0,
      //   leading: Icon(
      //     Icons.notes_rounded,
      //     color: Colors.black,
      //   ),
      // ),
      backgroundColor: Color(0XffF0F1EF),
      // body: PageView(
      //   pageSnapping: false,
      //   controller: _pageController,
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     HomeScreen(nextPage),
      //     SecondScree(),
      //   ],
      // ));
      body: Coast(
        scrollDirection: Axis.vertical,
        beaches: _beaches,
        allowImplicitScrolling: true,
        controller: _coastController,
        observers: [
          CrabController(),
        ],
      ),
    );
  }
}
