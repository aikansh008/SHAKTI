import 'package:flutter/material.dart';
import 'package:shakti/Utils/constants/colors.dart';
import 'package:shakti/Utils/constants/sizes.dart';
import 'package:shakti/helpers/helper_functions.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = THelperFunctions.screenHeight();
    double width = THelperFunctions.screenWidth();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Scolor.primary,
        title: Text(
          'Hi, Entrepreneur!',
          style: TextStyle(
              color: Scolor.white,
              fontSize: ESizes.fontSizeMd,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.md),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.3,
                        width: width * 0.6,
                        child: Image.asset("assets/images/image 20.png",
                            fit: BoxFit.cover),
                      ),
                      SizedBox(height: height * 0.05),
                      Text(
                        'I am here to help you...',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: ESizes.fontSizeLg,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: height * 0.05),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircularContainer(
                                image: "assets/images/video.png",
                                label: "Video"),
                            CircularContainer(
                                image: "assets/images/doc.png",
                                label: "Document"),
                            CircularContainer(
                                image: "assets/images/flowchart.png",
                                label: "Process"),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("What I would suggest is..",
                        style: TextStyle(
                            fontSize: ESizes.fontSizeLg,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: height * 0.02),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SuggestionContainer(
                              height: height,
                              image: "assets/images/Vector (2).png",
                              heading: "Your Progress",
                              suggestion1: "Keep tracking daily",
                              suggestion2: "Complete 5 tasks",
                              suggestion3: "Focus on key skills",
                              width: width),
                          SuggestionContainer(
                            height: height,
                            image: "assets/images/newwallet.png",
                            heading: "Your Budget",
                            suggestion1: "Save 20% income",
                            suggestion2: "Invest wisely",
                            suggestion3: "Monitor expenses",
                            width: width,
                          ),
                          SuggestionContainer(
                            height: height,
                            image: "assets/images/Group.png",
                            heading: "Your Feedback",
                            suggestion1: "Ask for reviews",
                            suggestion2: "Improve quality",
                            suggestion3: "Engage with clients",
                            width: width,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SuggestionContainer extends StatelessWidget {
  final String image;
  final String heading;
  final String suggestion1;
  final String suggestion2;
  final String suggestion3;
  final double height;
  final double width;

  const SuggestionContainer({
    required this.image,
    required this.heading,
    required this.suggestion1,
    required this.suggestion2,
    required this.suggestion3,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: height * 0.28,
      width: width * 0.38,
      decoration: BoxDecoration(
          color: Scolor.primary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Scolor.secondry, width: 1)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(image),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      heading,
                      style: TextStyle(
                          color: Scolor.secondry,
                          fontSize: ESizes.fontSizeMd,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "1. $suggestion1",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "2. $suggestion2",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "3. $suggestion3",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularContainer extends StatelessWidget {
  final String image;
  final String label;

  const CircularContainer({
    required this.image,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = THelperFunctions.screenHeight();
    double width = THelperFunctions.screenWidth();
    return Column(
      children: [
        Container(
          height: height * 0.08,
          width: width * 0.16,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Scolor.secondry),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(image, fit: BoxFit.scaleDown),
          ),
        ),
        SizedBox(height: height * 0.01),
        Text(
          label,
          style: TextStyle(
              color: Colors.white,
              fontSize: ESizes.fontSizeMd,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
