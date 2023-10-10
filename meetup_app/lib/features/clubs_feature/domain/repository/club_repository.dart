import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/clubs_feature/domain/entities/club.dart';

abstract class ClubRepository {
  Future<DataState<List<ClubEntity>>> getClubs();
}
