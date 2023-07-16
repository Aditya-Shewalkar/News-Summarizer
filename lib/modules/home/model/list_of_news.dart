// To parse this JSON data, do
//
//     final newsList = newsListFromJson(jsonString);

// To parse this JSON data, do
//
//     final newsList = newsListFromJson(jsonString);

import 'dart:convert';

NewsList newsListFromJson(String str) => NewsList.fromJson(json.decode(str));

String newsListToJson(NewsList data) => json.encode(data.toJson());

class NewsList {
  String? message;
  List<News>? data;

  NewsList({
    this.message,
    this.data,
  });

  factory NewsList.fromJson(Map<String, dynamic> json) => NewsList(
        message: json["message"],
        data: List<News>.from(json["data"].map((x) => News.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class News {
  String? author;
  DateTime? publishDetails;
  String? title;
  String? url;
  String? urlToImage;
  String? summarizeNews;

  News({
    this.author,
    this.publishDetails,
    this.title,
    this.url,
    this.urlToImage,
    this.summarizeNews,
  });

  factory News.fromJson(Map<String, dynamic> json) => News(
        author: json["author"],
        publishDetails: DateTime.parse(json["publishDetails"]),
        title: json["title"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        summarizeNews: json["summarizeNews"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "publishDetails": publishDetails!.toIso8601String(),
        "title": title,
        "url": url,
        "urlToImage": urlToImage,
        "summarizeNews": summarizeNews,
      };
}
