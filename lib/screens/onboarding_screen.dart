import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/background-img.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain,
              alignment: Alignment.topRight,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/lunkgem-icon.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Lunkgem',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'The Best Music\nCollection To\nKeep Your Mood',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  SlideAction(
                    text: 'Swipe to Get Started',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    outerColor: const Color.fromARGB(255, 31, 31, 31),
                    innerColor: const Color.fromARGB(255, 49, 76, 255),
                    sliderButtonIcon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                    onSubmit: () {
                      Navigator.pushReplacementNamed(context, 'homeScreen');
                      return null;
                    },
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
