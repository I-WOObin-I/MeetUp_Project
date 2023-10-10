import 'package:meetup_app/features/clubs_feature/domain/entities/club.dart';

class ClubModel extends ClubEntity {
  const ClubModel({
    String? id,
    String? name,
  });

  factory ClubModel.fromJson(Map<String, dynamic> map) {
    return ClubModel(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
    );
  }
}
