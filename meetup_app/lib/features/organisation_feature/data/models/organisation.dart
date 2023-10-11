import 'package:meetup_app/features/organisation_feature/domain/entities/organisation.dart';

class OrganisationModel extends OrganisationEntity {
  const OrganisationModel({
    String? id,
    String? name,
  });

  factory OrganisationModel.fromJson(Map<String, dynamic> map) {
    return OrganisationModel(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
    );
  }
}
