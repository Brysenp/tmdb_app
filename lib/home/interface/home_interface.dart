import 'package:net_flix/home/enum/trend_enum.dart';
import 'package:net_flix/models/api_response.dart';
import 'package:net_flix/models/base_list_result.dart';
import 'package:net_flix/models/movie/movie.dart';

abstract class HomeInterface{

  Future<ApiResponse<BaseListResult<Movie>>> getNowPlaying(int page);
  Future<ApiResponse<BaseListResult<Movie>>> getTopRated(int page);
  Future<ApiResponse<BaseListResult<Movie>>> getTrend(int page, Trend trend);


}