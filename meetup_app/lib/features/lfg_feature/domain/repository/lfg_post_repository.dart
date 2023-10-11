import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/lfg_feature/domain/entities/lfg_post.dart';

abstract class LFGPostRepository {
  Future<DataState<List<LFGPostEntity>>> getLFGPosts();
}
