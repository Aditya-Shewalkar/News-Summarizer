import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/modules/home/model/list_of_news.dart';
import 'package:news_summary/riverpod/riverpod.dart';
import 'package:async_loader/async_loader.dart';
import 'shimmer_effect.dart';
import 'package:share_plus/share_plus.dart';
import 'package:news_summary/modules/webview/fullview.dart';

List<Article> listNews = <Article>[];

class CardList extends ConsumerStatefulWidget {
  const CardList({super.key});

  @override
  ConsumerState<CardList> createState() => _CardListState();
}

class _CardListState extends ConsumerState<CardList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final homeScreenLogic = ref.watch(homeScreenProvider);
        return AsyncLoader(
            initState: () async => {
                  listNews =
                      await homeScreenLogic.getListofGeneralNews(context),
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
                        InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ArticleView(
                                    blogUrl: listNews[index].url!)));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: homeScreenLogic.cardColors[index % 3],
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    listNews[index].title!,
                                    style: const TextStyle(
                                        color: AppColor.blackColor,
                                        fontFamily: "PM",
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Image(
                                    image: NetworkImage(
                                        listNews[index].urlToImage!),
                                    errorBuilder: (context, error, stackTrace) {
                                      return Image.network(
                                          "https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png");
                                    },
                                    frameBuilder: (context, child, frame,
                                            wasSynchronouslyLoaded) =>
                                        child,
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return CircularProgressIndicator(
                                        value: loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!,
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    listNews[index].summarizeNews!,
                                    style: const TextStyle(
                                      color: AppColor.blackColor,
                                      fontFamily: "PR",
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
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
                                        onPressed: () async {
                                          await Share.share(
                                              "${listNews[index].summarizeNews!}\n\n Read full article:${listNews[index].url!}");
                                        },
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
                            ),
                          )),
                    ),
                  ));
            });
      },
    );
  }
}
