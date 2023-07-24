// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

News newsFromJson(String str) => News.fromJson(json.decode(str));

String newsToJson(News data) => json.encode(data.toJson());

class News {
  List<Article>? articles;
  int? messageStatus;

  News({
    this.articles,
    this.messageStatus,
  });

  factory News.fromJson(Map<String, dynamic> json) => News(
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
        messageStatus: json["messageStatus"],
      );

  Map<String, dynamic> toJson() => {
        "articles": List<dynamic>.from(articles!.map((x) => x.toJson())),
        "messageStatus": messageStatus,
      };
}

class Article {
  String? author;
  String? description;
  DateTime? publishDetails;
  String? summarizeNews;
  String? title;
  String? url;
  String? urlToImage;

  Article({
    this.author,
    this.description,
    this.publishDetails,
    this.summarizeNews,
    this.title,
    this.url,
    this.urlToImage,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        author: json["author"] ?? "Unknown",
        description: json["description"] ?? "Descrption",
        publishDetails: DateTime.parse(json["publishDetails"]),
        summarizeNews: json["summarizeNews"] ?? "Summary Missed",
        title: json["title"],
        url: json["url"],
        urlToImage: json["urlToImage"] ??
            "https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png",
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "description": description,
        "publishDetails": publishDetails!.toIso8601String(),
        "summarizeNews": summarizeNews,
        "title": title,
        "url": url,
        "urlToImage": urlToImage,
      };
}
