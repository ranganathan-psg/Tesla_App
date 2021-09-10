import 'package:flutter/material.dart';

class LastTripContainer extends StatelessWidget {
  const LastTripContainer({
    Key? key,
    required this.subTitle,
    required this.title,
  }) : super(key: key);

  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 5,
      ),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 25, right: 15),
              child: const Icon(
                Icons.location_on_rounded,
                size: 28,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20).copyWith(left: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
