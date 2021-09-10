import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_demo/constants/color_constant.dart';
import 'package:tesla_demo/pages/widgets/sizedbox_20.dart';
import 'package:tesla_demo/pages/widgets/spec_container.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key, required this.nextPage}) : super(key: key);

  final Function(int) nextPage;

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Positioned(
          right: -130,
          child: Crab(
            tag: "tesla",
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: SimpleShadow(
                child: Image.asset("assets/images/tesla2.png"),
                opacity: 1, // Default: 0.5
                // color: shadowColor, // Default: Black
                offset: const Offset(0, 15), // Default: Offset(2, 2)
                sigma: 15,
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          child: Column(
            children: <Widget>[
              const SpecContainer(
                title: "Battery 100%",
                icon: RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.battery_std,
                    size: 30,
                  ),
                ),
              ),
              SizedBox20H,
              const SpecContainer(
                title: "Diagnostics",
                icon: RotatedBox(
                  quarterTurns: 5,
                  child: Icon(
                    Icons.analytics_rounded,
                    size: 30,
                  ),
                ),
              ),
              SizedBox20H,
              Stack(
                children: <Widget>[
                  Container(
                    height: 110,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: containerGrey,
                      boxShadow: const <BoxShadow>[
                        BoxShadow(color: Colors.grey, blurRadius: 7, offset: Offset(3, 3)),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
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
                  const Positioned(
                    top: 2,
                    right: 2,
                    child: Icon(
                      Icons.notification_important,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox20H,
              const SpecContainer(
                title: "Maintance",
                icon: Icon(
                  Icons.calendar_today_sharp,
                  size: 30,
                ),
              ),
              SizedBox20H,
              InkWell(
                onTap: () => widget.nextPage(2),
                child: const Icon(
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
