import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/features/organisations_feature/data/models/organisation.dart';
import 'package:retrofit/retrofit.dart';

part 'organisations_api_service.g.dart';

@RestApi(baseUrl: organisationsAPIBaseURL)
abstract class OrganisationsApiService {
  factory OrganisationsApiService(Dio dio, {String baseUrl}) = _OrganisationsApiService;

  @GET("/organisations")
  Future<HttpResponse<List<OrganisationModel>>> getOrganisations({
    @Query("apiKey") String? apiKey,
    @Query("sportType") String? sportType,
    @Query("country") String? country,
    @Query("city") String? city,
  });
}
