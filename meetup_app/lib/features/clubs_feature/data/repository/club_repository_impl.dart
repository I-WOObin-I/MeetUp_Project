import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/clubs_feature/data/data_sources/remote/clubs_api_service.dart';
import 'package:meetup_app/features/clubs_feature/data/models/club.dart';
import 'package:meetup_app/features/clubs_feature/domain/repository/club_repository.dart';

class ClubRepositoryImpl implements ClubRepository {
  final ClubsApiService _clubsApiService;
  ClubRepositoryImpl(this._clubsApiService);

  @override
  Future<DataState<List<ClubModel>>> getClubs() async {
    try {
      List<ClubModel> data = [
        const ClubModel(id: "1", name: "Club 1"),
        const ClubModel(id: "2", name: "Club 2"),
        const ClubModel(id: "3", name: "Club 3"),
        const ClubModel(id: "4", name: "Club 4"),
        const ClubModel(id: "5", name: "Club 5"),
      ];

      await Future.delayed(const Duration(seconds: 2));

      return DataSuccess(data);
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }

  // @override
  // Future<DataState<List<ClubModel>>> getClubs() async {
  //   try {
  //     final httpResponse = await _clubsApiService.getClubs(
  //       apiKey: clubsAPIKey,
  //       sportType: "sample sport",
  //       country: "sample country",
  //       city: "sample city",
  //     );

  //     if (httpResponse.response.statusCode == 200) {
  //       return DataSuccess(httpResponse.data);
  //     } else {
  //       return DataFailed(DioException(
  //         error: httpResponse.response.statusMessage,
  //         response: httpResponse.response,
  //         type: DioExceptionType.badResponse,
  //         requestOptions: httpResponse.response.requestOptions,
  //       ));
  //     }
  //   } on DioException catch (e) {
  //     return DataFailed(e);
  //   }
  // }
}
