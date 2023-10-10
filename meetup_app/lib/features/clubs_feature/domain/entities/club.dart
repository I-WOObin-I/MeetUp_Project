import 'package:equatable/equatable.dart';

class ClubEntity extends Equatable {
  final String? id;
  final String? name;

  const ClubEntity({
    this.id,
    this.name,
  });

  @override
  List<Object?> get props => [id, name];
}
