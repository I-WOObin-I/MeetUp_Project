import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_app/core/resources/data_state.dart';
import 'package:meetup_app/features/organisations_feature/domain/usecases/get_organisation.dart';
import 'package:meetup_app/features/organisations_feature/presentation/bloc/club/remote/remote_organisation_event.dart';
import 'package:meetup_app/features/organisations_feature/presentation/bloc/club/remote/remote_organisation_state.dart';

class RemoteOrganisationsBloc
    extends Bloc<RemoteOrganisationsEvent, RemoteOrganisationsState> {
  final GetOrganisationUseCase _getOrganisationUseCase;

  RemoteOrganisationsBloc(this._getOrganisationUseCase)
      : super(RemoteOrganisationsLoading()) {
    on<GetOrganisations>(onGetOrganisations);
  }

  void onGetOrganisations(
      GetOrganisations event, Emitter<RemoteOrganisationsState> emit) async {
    final dataState = await _getOrganisationUseCase.call(null);

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteOrganisationsLoaded(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RemoteOrganisationsError(dataState.error!));
    }
  }
}
