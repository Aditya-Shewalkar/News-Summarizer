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
        author: json["author"],
        description: json["description"],
        publishDetails: DateTime.parse(json["publishDetails"]),
        summarizeNews: json["summarizeNews"],
        title: json["title"],
        url: json["url"],
        urlToImage: json["urlToImage"],
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



/*
// To parse this JSON data, do
//
//     final newsList = newsListFromJson(jsonString);

import 'dart:convert';

NewsList newsListFromJson(String str) => NewsList.fromJson(json.decode(str));

String newsListToJson(NewsList data) => json.encode(data.toJson());

class NewsList {
  String? id;
  Record? record;
  Metadata? metadata;

  NewsList({
    this.id,
    this.record,
    this.metadata,
  });

  factory NewsList.fromJson(Map<String, dynamic> json) => NewsList(
        id: json["id"],
        record: Record.fromJson(json["record"]),
        metadata: Metadata.fromJson(json["metadata"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "record": record!.toJson(),
        "metadata": metadata!.toJson(),
      };
}

class Metadata {
  String? name;
  int? readCountRemaining;
  int? timeToExpire;
  DateTime? createdAt;

  Metadata({
    this.name,
    this.readCountRemaining,
    this.timeToExpire,
    this.createdAt,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        name: json["name"],
        readCountRemaining: json["readCountRemaining"],
        timeToExpire: json["timeToExpire"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "readCountRemaining": readCountRemaining,
        "timeToExpire": timeToExpire,
        "createdAt": createdAt!.toIso8601String(),
      };
}

class Record {
  String? message;
  List<News>? data;

  Record({
    this.message,
    this.data,
  });

  factory Record.fromJson(Map<String, dynamic> json) => Record(
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
*/