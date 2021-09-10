import 'package:flutter/material.dart';
import 'package:tesla_demo/constants/color_constant.dart';

class SpecContainer extends StatelessWidget {
  const SpecContainer({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.grey, blurRadius: 7, offset: Offset(3, 3)),
        ],
        color: containerGrey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
