import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/organisations_feature/data/data_sources/remote/organisations_api_service.dart';
import 'package:meetup_app/features/organisations_feature/data/models/organisation.dart';
import 'package:meetup_app/features/organisations_feature/domain/repository/organisation_repository.dart';

class OrganisationRepositoryImpl implements OrganisationRepository {
  final OrganisationsApiService _organisationsApiService;
  OrganisationRepositoryImpl(this._organisationsApiService);

  @override
  Future<DataState<List<OrganisationModel>>> getOrganisations() async {
    try {
      final httpResponse = await _organisationsApiService.getOrganisations(
        apiKey: organisationsAPIKey,
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
