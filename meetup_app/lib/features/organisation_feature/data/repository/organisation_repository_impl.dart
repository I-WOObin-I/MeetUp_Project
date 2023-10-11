import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/clubs_feature/data/data_sources/remote/clubs_api_service.dart';
import 'package:meetup_app/features/clubs_feature/data/models/club.dart';
import 'package:meetup_app/features/clubs_feature/domain/repository/club_repository.dart';
import 'package:retrofit/retrofit.dart';

class ClubRepositoryImpl implements ClubRepository {
  final ClubsApiService _clubsApiService;
  ClubRepositoryImpl(this._clubsApiService);

  @override
  Future<DataState<List<ClubModel>>> getClubs() async {
    try {
      final httpResponse = await _clubsApiService.getClubs(
        apiKey: clubsAPIKey,
        sportType: "sample sport",
        country: "sample country",
        city: "sample city",
      );

      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
