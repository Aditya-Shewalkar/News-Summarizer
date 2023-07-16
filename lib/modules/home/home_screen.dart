import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/modules/home/widgets/categories.dart';
import 'package:news_summary/modules/home/widgets/news_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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
            child: Column(
          children: const [
            CategoriesList(),
            Expanded(child: CardList()),
          ],
        )));
  }
}
