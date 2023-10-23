import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/core/usecase/usecase.dart';
import 'package:meetup_app/features/lfg_feature/domain/entities/lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/domain/repository/lfg_post_repository.dart';

class GetLFGPostUseCase
    implements UseCase<DataState<List<LFGPostEntity>>, void> {
  final LFGPostRepository _lfgPostRepository;

  GetLFGPostUseCase(this._lfgPostRepository);

  @override
  Future<DataState<List<LFGPostEntity>>> call(void params) async {
    return _lfgPostRepository.getLFGPosts();
  }
}
