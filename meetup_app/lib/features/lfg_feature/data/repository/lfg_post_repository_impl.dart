import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/lfg_feature/data/data_sources/remote/lfg_posts_api_service.dart';
import 'package:meetup_app/features/lfg_feature/data/models/lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/domain/repository/lfg_post_repository.dart';

class LFGPostRepositoryImpl implements LFGPostRepository {
  final LFGPostsApiService _lfgPostsApiService;
  LFGPostRepositoryImpl(this._lfgPostsApiService);

  @override
  Future<DataState<List<LFGPostModel>>> getLFGPosts() async {
    try {
      final httpResponse = await _lfgPostsApiService.getLFGPosts(
        apiKey: lfgPostsAPIKey,
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
