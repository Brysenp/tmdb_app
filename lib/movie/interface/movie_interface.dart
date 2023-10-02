

import '../../core/models/api_response.dart';
import '../models/movie.dart';

abstract class MovieInterface {

  Future<ApiResponse<NowPlaying>> getNowPlaying();
  Future<ApiResponse<TopRated>> getTopRated();

}