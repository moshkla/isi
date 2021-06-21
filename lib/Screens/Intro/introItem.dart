import 'package:flutter/material.dart';

class IntroItem extends StatelessWidget {
  final String imageUrl;
  final String description;

  IntroItem({required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(width: width * 0.90, child: Image.asset(imageUrl)),
        ),
        // SizedBox(
        //   height: 12,
        // ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            style: TextStyle(color: Colors.white, fontSize: 19),
            textAlign: TextAlign.center,
          ),
        ),
        // const SizedBox(height: 20),
      ],
    );
  }
}
