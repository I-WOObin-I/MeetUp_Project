import 'package:dio/dio.dart';
import 'package:meetup_app/core/constants/constants.dart';
import 'package:meetup_app/core/objects/skill_lvl.dart';
import 'package:meetup_app/core/objects/sports.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/lfg_feature/data/data_sources/remote/lfg_posts_api_service.dart';
import 'package:meetup_app/features/lfg_feature/data/models/lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/domain/repository/lfg_post_repository.dart';
import 'dart:developer' as developer;

class LFGPostRepositoryImpl implements LFGPostRepository {
  final LFGPostsApiService _lfgPostsApiService;
  LFGPostRepositoryImpl(this._lfgPostsApiService);

  @override
  Future<DataState<List<LFGPostModel>>> getLFGPosts() async {
    try {
      List<LFGPostModel> data = [
        LFGPostModel(
          id: "1",
          sportType: SportType.volleyball,
          location: "Gdansk, Ergo Arena",
          publishDate: DateTime.now(),
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          maxPlayers: 14,
          title: "gra na pozycjach",
          content: "mam 3 wolne miejsca na ergo arene 12.00",
          attendeeIds: const ["123", "234", "345"],
          skillLevels: const [SkillLevel.amateur, SkillLevel.expert],
          likes: const ['123', '232', '2333'],
          comments: const ['234','32432','34344'],
        ),
        LFGPostModel(
          id: "2",
          sportType: SportType.volleyball,
          location: "Gdynia Morska 7",
          publishDate: DateTime.now(),
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          maxPlayers: 14,
          title: "gra rekreacyjna",
          content: "szukam 4 osob do gry rekreacyjnej",
          attendeeIds: const ["123", "234", "345"],
          skillLevels: const [SkillLevel.intermediate, SkillLevel.amateur],
          likes: const ['123', '232', '2333'],
          comments: const ['234','32432','34344'],
        ),
        LFGPostModel(
          id: "1",
          sportType: SportType.volleyball,
          location: "Gdansk, Wilkopolska 2",
          publishDate: DateTime.now(),
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          maxPlayers: 14,
          title: "trening srednio zaawansowany",
          content: "1 miejsce na trening z trenerem",
          attendeeIds: const ["123", "234", "345"],
          skillLevels: const [SkillLevel.beginner, SkillLevel.intermediate],
          likes: const ['123', '232', '2333'],
          comments: const ['234','32432','34344'],
        ),
      ];
      developer.log(data.toString(), name: 'repo impl');

      await Future.delayed(const Duration(seconds: 2));
      return DataSuccess(data);
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}


// @override
//   Future<DataState<List<LFGPostModel>>> getLFGPosts() async {
//     try {
//       final httpResponse = await _lfgPostsApiService.getLFGPosts(
//         apiKey: lfgPostsAPIKey,
//         sportType: "sample sport",
//         country: "sample country",
//         city: "sample city",
//       );

//       if (httpResponse.response.statusCode == 200) {
//         return DataSuccess(httpResponse.data);
//       } else {
//         return DataFailed(DioException(
//           error: httpResponse.response.statusMessage,
//           response: httpResponse.response,
//           type: DioExceptionType.badResponse,
//           requestOptions: httpResponse.response.requestOptions,
//         ));
//       }
//     } on DioException catch (e) {
//       return DataFailed(e);
//     }
//   }
// }
