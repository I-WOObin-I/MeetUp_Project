import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meetup_app/features/lfg_feature/domain/entities/lfg_post.dart';

abstract class RemoteLFGPostsState extends Equatable {
  final List<LFGPostEntity>? lfgPosts;
  final DioException? exception;

  const RemoteLFGPostsState({
    this.lfgPosts,
    this.exception,
  });

  @override
  List<Object?> get props => [lfgPosts!, exception!];
}

class RemoteLFGPostsLoading extends RemoteLFGPostsState {
  const RemoteLFGPostsLoading();
}

class RemoteLFGPostsLoaded extends RemoteLFGPostsState {
  RemoteLFGPostsLoaded(List<LFGPostEntity> lfgPost) : super(lfgPosts: lfgPost);
}

class RemoteLFGPostsError extends RemoteLFGPostsState {
  const RemoteLFGPostsError(DioException exception)
      : super(exception: exception);
}
