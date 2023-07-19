import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/modules/home/model/list_of_news.dart';
import 'package:news_summary/riverpod/riverpod.dart';
import 'package:async_loader/async_loader.dart';
import 'shimmer_effect.dart';

List<Article> listNews = <Article>[];

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
        return AsyncLoader(
            initState: () async => {
                  listNews = await homeScreenLogic.getLisofNews(context),
                },
            renderLoad: () {
              return const ShimmerEffect();
            },
            renderError: ([error]) {
              return Text(error);
            },
            renderSuccess: ({data}) {
              print(data);
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: CardSwiper(
                    cardsCount: 10,
                    cardBuilder: (context, index, percentThresholdX,
                            percentThresholdY) =>
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
                                  Text(
                                    listNews[index].title!,
                                    style: const TextStyle(
                                        color: AppColor.blackColor,
                                        fontFamily: "PM"),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Image(
                                      image: NetworkImage(
                                          listNews[index].urlToImage!)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      listNews[index].summarizeNews!,
                                      style: const TextStyle(
                                        color: AppColor.blackColor,
                                        fontFamily: "PR",
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                      child: SizedBox(
                                    height: 10,
                                  )),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.all(10),
                                            shape: const CircleBorder(),
                                            backgroundColor:
                                                AppColor.whiteColor),
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
                                            backgroundColor:
                                                AppColor.whiteColor),
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
                  ));
            });
      },
    );
  }
}
