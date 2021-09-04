import 'package:flutter/material.dart';
import 'package:tesla_demo/constants/colorConstant.dart';

class SpecContainer extends StatelessWidget {
  final title;
  final icon;
  const SpecContainer(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 7, offset: Offset(3, 3)),
        ],
        color: containerGrey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
