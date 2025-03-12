import 'package:flutter/material.dart';
import 'package:shakti/Utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: Text(
          "Hello Vedanshi ! Welcome to Shakti",
          style: TextStyle(color: Scolor.secondry),
        )),
        Text(
          "This is a sample text",
          style: TextStyle(color: Scolor.secondry),
        )
      ],
    ));
  }
}
