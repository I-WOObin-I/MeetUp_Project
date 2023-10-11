import 'package:equatable/equatable.dart';

class OrganisationEntity extends Equatable {
  final String? id;
  final String? name;

  const OrganisationEntity({
    this.id,
    this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
