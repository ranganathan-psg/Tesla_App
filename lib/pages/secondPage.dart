import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_demo/constants/colorConstant.dart';
import 'package:tesla_demo/pages/widgets/sizedBox20.dart';
import 'package:tesla_demo/pages/widgets/specContainer.dart';

class SecondScree extends StatefulWidget {
  final nextPage;
  const SecondScree(this.nextPage);

  @override
  _SecondScreeState createState() => _SecondScreeState();
}

class _SecondScreeState extends State<SecondScree> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          right: -130,
          child: Crab(
            tag: "tesla",
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: SimpleShadow(
                child: Image.asset("assets/images/tesla2.png"),
                opacity: 1, // Default: 0.5
                // color: shadowColor, // Default: Black
                offset: Offset(0, 15), // Default: Offset(2, 2)
                sigma: 15,
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          child: Column(
            children: [
              SpecContainer(
                "Battery 100%",
                RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.battery_std,
                    size: 30,
                  ),
                ),
              ),
              SizedBox20H,
              SpecContainer(
                "Diagnostics",
                RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.analytics_rounded,
                    size: 30,
                  ),
                ),
              ),
              SizedBox20H,
              Stack(
                children: [
                  Container(
                    height: 110,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: containerGrey,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                            offset: Offset(3, 3)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage(
                            "assets/images/traffic_icon.png",
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Recalls",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 2,
                      right: 2,
                      child: Icon(
                        Icons.notification_important,
                        size: 30,
                        color: Colors.red,
                      )),
                ],
              ),
              SizedBox20H,
              SpecContainer(
                "Maintance",
                Icon(
                  Icons.calendar_today_sharp,
                  size: 30,
                ),
              ),
              SizedBox20H,
              InkWell(
                onTap: () => widget.nextPage(2),
                child: Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
