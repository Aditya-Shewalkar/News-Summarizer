import 'package:flutter/material.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

List<Container> cards = [
  Container(
    alignment: Alignment.center,
    child: const Text('1'),
    color: Colors.blue,
  ),
  Container(
    alignment: Alignment.center,
    child: const Text('2'),
    color: Colors.red,
  ),
  Container(
    alignment: Alignment.center,
    child: const Text('3'),
    color: Colors.purple,
  )
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'News Summarizer',
            style: TextStyle(color: AppColor.blackColor, fontSize: 15),
          ),
        ),
        body: SafeArea(
          child: CardSwiper(
            cardsCount: cards.length,
            cardBuilder:
                (context, index, percentThresholdX, percentThresholdY) =>
                    cards[index],
          ),
        ));
  }
}
