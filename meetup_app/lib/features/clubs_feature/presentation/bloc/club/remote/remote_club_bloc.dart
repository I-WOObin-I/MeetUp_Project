import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/clubs_feature/domain/usecases/get_club.dart';
import 'package:meetup_app/features/clubs_feature/presentation/bloc/club/remote/remote_club_event.dart';
import 'package:meetup_app/features/clubs_feature/presentation/bloc/club/remote/remote_club_state.dart';

class RemoteClubsBloc extends Bloc<RemoteClubsEvent, RemoteClubsState> {
  final GetClubUseCase _getClubUseCase;

  RemoteClubsBloc(this._getClubUseCase) : super(RemoteClubsLoading()) {
    on<GetClubs>(onGetClubs);
  }

  void onGetClubs(GetClubs event, Emitter<RemoteClubsState> emit) async {
    final dataState = await _getClubUseCase.call(null);

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteClubsLoaded(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RemoteClubsError(dataState.error!));
    }
  }
}
