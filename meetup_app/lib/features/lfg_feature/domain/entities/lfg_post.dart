import 'package:equatable/equatable.dart';
import 'package:meetup_app/core/objects/skill_lvl.dart';
import 'package:meetup_app/core/objects/sports.dart';

class LFGPostEntity extends Equatable {
  final String? id;
  final String? author;
  final SportType? sportType;
  final String? location;
  final DateTime? publishDate;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? maxPlayers;
  final String? title;
  final String? content;
  final List<String>? attendeeIds;
  final List<SkillLevel>? skillLevels;
  final List<String>? likes;
  final List<String>? comments;


  const LFGPostEntity({
    this.id,
    this.author,
    this.sportType,
    this.location,
    this.publishDate,
    this.startDate,
    this.endDate,
    this.maxPlayers,
    this.title,
    this.content,
    this.attendeeIds,
    this.skillLevels,
    this.likes,
    this.comments,
  });

  @override
  List<Object?> get props => [
    id,
    author,
    sportType,
    location,
    publishDate,
    startDate,
    endDate,
    maxPlayers,
    title,
    content,
  ];
}
