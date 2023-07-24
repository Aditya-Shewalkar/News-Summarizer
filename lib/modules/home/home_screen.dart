import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/modules/home/widgets/categories.dart';
import 'package:news_summary/modules/home/widgets/news_card.dart';
import 'package:news_summary/modules/no_network/network_screen.dart';
import 'package:news_summary/riverpod/riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    final homeScreenLogic = ref.watch(homeScreenProvider);
    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen(homeScreenLogic.updateConnection);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final homScreenLogic = ref.watch(homeScreenProvider);
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              'QuickBriefs',
              style: TextStyle(color: AppColor.blackColor, fontSize: 15),
            ),
          ),
          body: SafeArea(
              child: homScreenLogic.isConnected == ConnectivityResult.none
                  ? const NoInternet()
                  : Column(
                      children: const [
                        CategoriesList(),
                        Expanded(child: CardList()),
                      ],
                    )));
    });
  }
}
