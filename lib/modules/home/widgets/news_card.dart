import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/riverpod/riverpod.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final homeScreenLogic = ref.watch(homeScreenProvider);
        return CardSwiper(
          cardsCount: cards.length,
          cardBuilder: (context, index, percentThresholdX, percentThresholdY) =>
              cards[index],
        );
      },
    );
  }
}

List<Container> cards = [
  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColor.cardColor,
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              "Watch: MS Dhoni Accepts Fan's Request For Special Gesture. Internet Impressed - NDTV Sports",
              style: TextStyle(color: AppColor.blackColor, fontFamily: "PM"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Image(
                image: NetworkImage(
                    "https://c.ndtvimg.com/2023-07/krmtppto_dhoni_625x300_13_July_23.jpg")),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "In May, he led Chennai Super Kings to their fifth IPL title.\nIn one such meeting, Dhoni can be seen standing with two young fans, when one of them asks Dhoni to make a special gesture.\nThe ex-India captain accepted the request and it brought a wide smile on the fan's face.",
              style: TextStyle(
                color: AppColor.blackColor,
                fontFamily: "PR",
                fontSize: 10,
              ),
            ),
            const Expanded(
                child: SizedBox(
              height: 10,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: const CircleBorder(),
                      backgroundColor: AppColor.whiteColor),
                  onPressed: () {},
                  child: const Icon(
                    Icons.share,
                    color: AppColor.blackColor,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      shape: const CircleBorder(),
                      backgroundColor: AppColor.whiteColor),
                  onPressed: () {},
                  child: const Icon(
                    Icons.bookmark,
                    color: AppColor.blackColor,
                  ),
                ),
              ],
            )
          ],
        ),
      )),
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColor.primaryColor,
    ),
    alignment: Alignment.center,
    child: const Text('2'),
  ),
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColor.secondaryColor,
    ),
    alignment: Alignment.center,
    child: const Text('3'),
  )
];
