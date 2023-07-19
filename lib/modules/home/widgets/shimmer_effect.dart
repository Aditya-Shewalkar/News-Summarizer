import 'package:flutter/material.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Shimmer.fromColors(
          baseColor: AppColor.cardColor,
          highlightColor: AppColor.highlightColor,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.cardColor,
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: AppColor.primaryColor,
                ),
              ],
            ),
          )),
    );
  }
}
