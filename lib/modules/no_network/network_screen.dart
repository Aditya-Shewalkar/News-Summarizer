import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_summary/constants/assets.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Lottie.asset(Images.noNetworkImage),
          const Text("No Internet Connection Found"),
        ],
      ),
    );
  }
}
