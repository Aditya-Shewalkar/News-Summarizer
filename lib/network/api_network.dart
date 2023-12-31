import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:news_summary/modules/home/model/list_of_news.dart';
part 'api_network.g.dart';

const String productionUrl = "http://sarvesh92.pythonanywhere.com/get/";

@RestApi(baseUrl: productionUrl)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('sports')
  Future<News> getSportsNewsList();

  @GET('general')
  Future<News> getGenealNewsList();

  @GET('business')
  Future<News> getBusinessNewsList();

  @GET('health')
  Future<News> getHealthNewsList();

  @GET('technology')
  Future<News> getTechnologyNewsList();

  @GET('science')
  Future<News> getScienceNewsList();
}
