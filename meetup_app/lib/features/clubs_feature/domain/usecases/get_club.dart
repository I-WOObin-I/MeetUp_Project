import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/core/usecase/usecase.dart';
import 'package:meetup_app/features/clubs_feature/domain/entities/club.dart';
import 'package:meetup_app/features/clubs_feature/domain/repository/club_repository.dart';

class GetClubUseCase implements UseCase<DataState<List<ClubEntity>>, void> {
  final ClubRepository _clubRepository;

  GetClubUseCase(this._clubRepository);

  @override
  Future<DataState<List<ClubEntity>>> call(void params) {
    return _clubRepository.getClubs();
  }
}
