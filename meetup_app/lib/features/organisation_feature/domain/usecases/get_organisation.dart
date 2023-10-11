import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/core/usecase/usecase.dart';
import 'package:meetup_app/features/organisation_feature/domain/entities/organisation.dart';
import 'package:meetup_app/features/organisation_feature/domain/repository/organisation_repository.dart';

class GetOrganisationUseCase implements UseCase<DataState<List<OrganisationEntity>>, void> {
  final OrganisationRepository _organisationRepository;

  GetOrganisationUseCase(this._organisationRepository);

  @override
  Future<DataState<List<OrganisationEntity>>> call(void params) {
    return _organisationRepository.getOrganisations();
  }
}
