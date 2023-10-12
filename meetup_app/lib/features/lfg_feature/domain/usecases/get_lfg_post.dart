import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/core/usecase/usecase.dart';
import 'package:meetup_app/features/lfg_feature/domain/entities/lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/domain/repository/lfg_post_repository.dart';
import 'dart:developer' as developer;

class GetLFGPostUseCase implements UseCase<DataState<List<LFGPostEntity>>, void> {
  final LFGPostRepository _lfgPostRepository;

  GetLFGPostUseCase(this._lfgPostRepository);

  @override
  Future<DataState<List<LFGPostEntity>>> call(void params) async {
    DataState<List<LFGPostEntity>> data;

    data = await _lfgPostRepository.getLFGPosts();

    developer.log(data.data.toString(), name: 'usecase');

    //return _lfgPostRepository.getLFGPosts();
    return data;
  }
}
