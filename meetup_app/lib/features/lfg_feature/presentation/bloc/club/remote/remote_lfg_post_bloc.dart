import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/lfg_feature/domain/usecases/get_lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/presentation/bloc/club/remote/remote_lfg_post_event.dart';
import 'package:meetup_app/features/lfg_feature/presentation/bloc/club/remote/remote_lfg_post_state.dart';

class RemoteLFGPostBloc extends Bloc<RemoteLFGPostsEvent, RemoteLFGPostsState> {
  final GetLFGPostUseCase _getLFGPostUseCase;

  RemoteLFGPostBloc(this._getLFGPostUseCase) : super(RemoteLFGPostsLoading()) {
    on<GetLFGPosts>(onGetLFGPosts);
  }

  void onGetLFGPosts(GetLFGPosts event, Emitter<RemoteLFGPostsState> emit) async {
    final dataState = await _getLFGPostUseCase.call(null);

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteLFGPostsLoaded(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RemoteLFGPostsError(dataState.error!));
    }
  }
}
