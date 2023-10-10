import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meetup_app/features/clubs_feature/domain/entities/club.dart';

abstract class RemoteClubsState extends Equatable {
  final List<ClubEntity>? clubs;
  final DioException? exception;

  const RemoteClubsState({
    this.clubs,
    this.exception,
  });

  @override
  List<Object?> get props => [clubs, exception];
}

class RemoteClubsLoading extends RemoteClubsState {
  const RemoteClubsLoading();
}

class RemoteClubsLoaded extends RemoteClubsState {
  const RemoteClubsLoaded(List<ClubEntity> club) : super(clubs: club);
}

class RemoteClubsError extends RemoteClubsState {
  const RemoteClubsError(DioException exception) : super(exception: exception);
}
