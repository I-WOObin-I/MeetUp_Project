import 'package:meetup_app/core/objects/skill_lvl.dart';
import 'package:meetup_app/core/objects/sports.dart';
import 'package:meetup_app/features/lfg_feature/domain/entities/lfg_post.dart';

class LFGPostModel extends LFGPostEntity {
  const LFGPostModel({
    String? id,
    String? author,
    SportType? sportType,
    String? location,
    DateTime? publishDate,
    DateTime? startDate,
    DateTime? endDate,
    int? maxPlayers,
    String? title,
    String? content,
    List<String>? attendeeIds,
    List<SkillLevel>? skillLevels,
    List<String>? likes,
    List<String>? comments,
  });

  factory LFGPostModel.fromJson(Map<String, dynamic> map) {
    return LFGPostModel(
      id: map['id'],
      author: map['author'],
      sportType: map['sportType'],
      location: map['location'],
      publishDate: map['publishDate'],
      startDate: map['startDate'],
      endDate: map['endDate'],
      maxPlayers: map['maxPlayers'],
      title: map['title'],
      content: map['content'],
      attendeeIds: map['attendeeIds'],
      skillLevels: map['skillLevels'],
      likes: map['likes'],
      comments: map['comments'],
    );
  }
}
