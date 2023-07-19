import 'package:flutter/material.dart';
import 'package:news_summary/modules/home/model/list_of_news.dart';
import 'package:news_summary/network/api_network.dart';
import 'package:news_summary/network/dio_client.dart';

class HomeScreenRepo extends ChangeNotifier {
  List<Article> listNews = <Article>[];

  getLisofNews(context) async {
    listNews.clear();
    final apiCall = RestClient(DioClient.getDio());
    await apiCall.getSportsNewsList().then((value) {
      if (value.messageStatus == 200) {
        listNews.addAll(value.articles!);
      } else {
        print("Something Went Wrong");
      }
    }).catchError((error) {
      print(error.toString());
    });
    notifyListeners();
    return listNews;
  }
}
