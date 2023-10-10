import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/features/clubs_feature/data/models/club.dart';
import 'package:retrofit/retrofit.dart';

part 'clubs_api_service.g.dart';

@RestApi(baseUrl: clubsAPIBaseURL)
abstract class ClubsApiService {
  factory ClubsApiService(Dio dio, {String baseUrl}) = _ClubsApiService;

  @GET("/clubs")
  Future<HttpResponse<List<ClubModel>>> getClubs({
    @Query("apiKey") String? apiKey,
    @Query("sportType") String? sportType,
    @Query("country") String? country,
    @Query("city") String? city,
  });
}
