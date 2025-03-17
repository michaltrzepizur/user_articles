import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:user_articles/domain/models/author_model.dart';

part 'authors_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://my-json-server.typicode.com/adamsmaka/json-demo')
abstract class AuthorsRemoteRetrofitDataSorce {
  factory AuthorsRemoteRetrofitDataSorce(Dio dio, {String? baseUrl}) = _AuthorsRemoteRetrofitDataSorce;

  @GET('/users')
  Future<List<AuthorModel>> getAuthors();
}