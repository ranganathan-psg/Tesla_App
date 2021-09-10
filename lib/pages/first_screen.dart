import 'package:coast/coast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesla_demo/pages/home_screen.dart';
import 'package:tesla_demo/pages/last_screen.dart';
import 'package:tesla_demo/pages/second_page.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    final CoastController _coastController = CoastController();
    //final PageController _pageController = PageController();

    void nextPage(int page) {
      //_pageController.animateToPage(_pageController.page!.toInt() + 1, duration: Duration(milliseconds: 800), curve: Curves.easeIn);
      _coastController.animateTo(beach: page, duration: const Duration(milliseconds: 1000), curve: Curves.easeIn);
    }

    final List<Beach> _beaches = <Beach>[
      Beach(builder: (BuildContext context) => HomeScreen(nextPage: nextPage)),
      Beach(builder: (BuildContext context) => SecondScreen(nextPage: nextPage)),
      Beach(builder: (BuildContext context) => const LastScreen()),
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
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF0F1EF),
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
        observers: <CrabController>[
          CrabController(),
        ],
      ),
    );
  }
}
