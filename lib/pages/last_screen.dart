import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_demo/constants/color_constant.dart';
import 'package:tesla_demo/pages/widgets/last_trip_container.dart';
import 'package:tesla_demo/pages/widgets/sizedbox_20.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F1EF),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -400,
            right: -110,
            child: Crab(
              tag: "tesla",
              child: SizedBox(
                height: 750,
                child: SimpleShadow(
                  child: SimpleShadow(
                    child: Image.asset("assets/images/tesla2.png"),
                    color: Colors.red,
                    opacity: 1,
                    offset: const Offset(28, 20),
                    // Default: Offset(2, 2)
                    sigma: 15,
                  ),
                  opacity: 1, // Default: 0.5
                  // color: shadowColor, // Default: Black
                  offset: const Offset(0, 15), // Default: Offset(2, 2)
                  sigma: 15,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 10,
            top: 20,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.notes_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: 25,
                          color: Colors.grey[600],
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "LAST TRIP",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const LastTripContainer(subTitle: "TOTAL 0:20", title: "1014 Jedzi Drive"),
                      const SizedBox(height: 3),
                      const LastTripContainer(subTitle: "TOTAL 1:15", title: "376 Suri Place"),
                      const SizedBox(height: 3),
                      const LastTripContainer(subTitle: "TOTAL 0:45", title: "1592 Izapu Road"),
                      SizedBox20H,
                      Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: containerGrey,
                        ),
                        child: const Center(
                          child: Text(
                            "More Trips",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox20H,
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
