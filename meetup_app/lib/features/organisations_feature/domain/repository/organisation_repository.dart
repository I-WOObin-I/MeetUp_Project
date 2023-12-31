import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/organisations_feature/domain/entities/organisation.dart';

abstract class OrganisationRepository {
  Future<DataState<List<OrganisationEntity>>> getOrganisations();
}
