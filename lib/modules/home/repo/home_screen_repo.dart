import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:news_summary/constants/assets.dart';
import 'package:news_summary/constants/colors.dart';
import 'package:news_summary/modules/home/model/list_of_news.dart';
import 'package:news_summary/network/api_network.dart';
import 'package:news_summary/network/dio_client.dart';

class HomeScreenRepo extends ChangeNotifier {
  ConnectivityResult isConnected = ConnectivityResult.none;
  List<Article> listNews = <Article>[];
  List<Color> cardColors = <Color>[
    AppColor.cardColor,
    AppColor.primaryColor,
    AppColor.secondaryColor
  ];
  String isSelected = "general";

  updateConnection(res) async {
    isConnected = res;
    notifyListeners();
  }

  getListofSportsNews(context) async {
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
    isSelected = "sports";
    notifyListeners();
    return listNews;
  }

  getListofGeneralNews(context) async {
    listNews.clear();
    final apiCall = RestClient(DioClient.getDio());
    await apiCall.getGenealNewsList().then((value) {
      if (value.messageStatus == 200) {
        listNews.addAll(value.articles!);
      } else {
        print("Something Went Wrong");
      }
    }).catchError((error) {
      print(error.toString());
    });
    isSelected = "general";
    notifyListeners();
    return listNews;
  }

  getListofBusinessNews(context) async {
    listNews.clear();
    final apiCall = RestClient(DioClient.getDio());
    await apiCall.getBusinessNewsList().then((value) {
      if (value.messageStatus == 200) {
        listNews.addAll(value.articles!);
      } else {
        print("Something Went Wrong");
      }
    }).catchError((error) {
      print(error.toString());
    });
    isSelected = "business";
    notifyListeners();
    return listNews;
  }

  getListofHealthNews(context) async {
    listNews.clear();
    final apiCall = RestClient(DioClient.getDio());
    await apiCall.getHealthNewsList().then((value) {
      if (value.messageStatus == 200) {
        listNews.addAll(value.articles!);
      } else {
        print("Something Went Wrong");
      }
    }).catchError((error) {
      print(error.toString());
    });
    isSelected = "health";
    notifyListeners();
    return listNews;
  }

  getListofTechnologyNews(context) async {
    listNews.clear();
    final apiCall = RestClient(DioClient.getDio());
    await apiCall.getTechnologyNewsList().then((value) {
      if (value.messageStatus == 200) {
        listNews.addAll(value.articles!);
      } else {
        print("Something Went Wrong");
      }
    }).catchError((error) {
      print(error.toString());
    });
    isSelected = "technology";
    notifyListeners();
    return listNews;
  }

  getListofScienceNews(context) async {
    listNews.clear();
    final apiCall = RestClient(DioClient.getDio());
    await apiCall.getScienceNewsList().then((value) {
      if (value.messageStatus == 200) {
        listNews.addAll(value.articles!);
      } else {
        print("Something Went Wrong");
      }
    }).catchError((error) {
      print(error.toString());
    });
    isSelected = "science";
    notifyListeners();
    return listNews;
  }
}
