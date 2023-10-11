import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/features/lfg_feature/data/models/lfg_post.dart';
import 'package:retrofit/retrofit.dart';

part 'lfg_posts_api_service.g.dart';

@RestApi(baseUrl: lfgPostsAPIBaseURL)
abstract class LFGPostsApiService {
  factory LFGPostsApiService(Dio dio, {String baseUrl}) = _LFGPostsApiService;

  @GET("/clubs")
  Future<HttpResponse<List<LFGPostModel>>> getLFGPosts({
    @Query("apiKey") String? apiKey,
    @Query("sportType") String? sportType,
    @Query("country") String? country,
    @Query("city") String? city,
  });
}
