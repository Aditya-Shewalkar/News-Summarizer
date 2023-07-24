import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_summary/constants/assets.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/modules/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Lottie.asset(
              Images.welcomeScreenAnimation,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    //height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: "QuickBriefs\n",
                          style: TextStyle(
                              color: AppColor.blackColor,
                              fontFamily: 'PM',
                              fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(15))),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                          child: const Text.rich(
                            TextSpan(
                                text: "Get Started  ",
                                style: TextStyle(
                                    color: AppColor.blackColor,
                                    fontSize: 18,
                                    fontFamily: 'PR'),
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward_sharp,
                                      color: AppColor.blackColor,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
