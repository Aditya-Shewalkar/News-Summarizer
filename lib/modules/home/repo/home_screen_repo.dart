import 'package:flutter/material.dart';
import 'package:news_summary/modules/home/model/list_of_news.dart';
import 'package:news_summary/network/api_network.dart';
import 'package:news_summary/network/dio_client.dart';

class HomeScreenRepo extends ChangeNotifier {
  List<News> listNews = <News>[];

  getLisofNews(context) async {
    listNews.clear();
    final apiCall = RestClient(DioClient.getDio());
    await apiCall.getSportsNewsList().then((value) {
      listNews.addAll(value.data!);
    }).catchError((error) {
      print(error);
    });
    notifyListeners();
    return listNews;
  }
}
