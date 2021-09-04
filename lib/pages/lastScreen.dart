import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_demo/constants/colorConstant.dart';
import 'package:tesla_demo/pages/widgets/lastTripContainer.dart';
import 'package:tesla_demo/pages/widgets/sizedBox20.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XffF0F1EF),
      body: Stack(
        children: [
          Positioned(
            top: -400,
            right: -110,
            child: Crab(
              tag: "tesla",
              child: Container(
                height: 750,
                child: SimpleShadow(
                  child: SimpleShadow(
                    child: Image.asset("assets/images/tesla2.png"),
                    color: Colors.red,
                    opacity: 1,
                    offset: Offset(28, 20), // Default: Offset(2, 2)
                    sigma: 15,
                  ),
                  opacity: 1, // Default: 0.5
                  // color: shadowColor, // Default: Black
                  offset: Offset(0, 15), // Default: Offset(2, 2)
                  sigma: 15,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 20,
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
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
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: 25,
                          color: Colors.grey[600],
                        ),
                        SizedBox(
                          width: 5,
                        ),
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
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LastTripContainer("TOTAL 0:20", "1014 Jedzi Drive"),
                      SizedBox(
                        height: 3,
                      ),
                      LastTripContainer("TOTAL 1:15", "376 Suri Place"),
                      SizedBox(
                        height: 3,
                      ),
                      LastTripContainer("TOTAL 0:45", "1592 Izapu Road"),
                      SizedBox20H,
                      Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: containerGrey,
                        ),
                        child: Center(
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
