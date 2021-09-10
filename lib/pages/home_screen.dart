import 'package:coast/coast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tesla_demo/constants/color_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.nextPage,
  }) : super(key: key);

  final Function(int) nextPage;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            bottom: false,
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.notes_rounded,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFF0F1EF),
                      foregroundImage: NetworkImage("https://image.shutterstock.com/image-photo/portrait-beautiful-sexy-blonde-girl-260nw-556441474.jpg"),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Text(
            "Hello",
            style: TextStyle(
              color: mildTextClr,
              fontSize: 24,
            ),
          ),
          const Text(
            "Alya",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          const Text(
            "1919 Georgetta Dr. San Jose Jose CA 95125, USA",
            style: TextStyle(
              color: mildTextClr,
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.035,
          ),
          DragTarget<Object>(
            builder: (BuildContext context, List<Object?> carreached, List<dynamic> carNotreached) {
              return Center(
                child: Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: containerGrey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.lock_rounded,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Unlock Doors",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
            onAccept: (Object data) {
              if (data == "unlock") {
                debugPrint("object");
              }
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Draggable<String>(
            axis: Axis.vertical,
            data: "unlock",
            // onDragStarted: () {
            //   print("object");
            // },
            // onDragEnd: (value) {
            //   print(value);
            // },
            // onDragCompleted: () {
            //   print("completed");
            // },
            onDraggableCanceled: (Velocity value, Offset d) {
              debugPrint(value.toString());
              widget.nextPage(1);
            },
            child: Crab(
              tag: "tesla",
              child: SizedBox(
                height: 750,
                child: SimpleShadow(
                  child: Image.asset("assets/images/tesla2.png"),
                  opacity: 1, // Default: 0.5
                  // color: shadowColor, // Default: Black
                  offset: const Offset(10, 5), // Default: Offset(2, 2)
                  sigma: 7,
                ),
              ),
            ),
            feedback: SizedBox(
              height: 750,
              child: SimpleShadow(
                child: Image.asset("assets/images/tesla2.png"),
                opacity: 1, // Default: 0.5
                // color: shadowColor, // Default: Black
                offset: const Offset(10, 5), // Default: Offset(2, 2)
                sigma: 15,
              ),
            ),
            childWhenDragging: Container(),
          ),
        ],
      ),
    );
  }
}
