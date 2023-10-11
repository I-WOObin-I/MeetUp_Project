import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:meetup_app/features/organisations_feature/domain/entities/organisation.dart';

abstract class RemoteOrganisationsState extends Equatable {
  final List<OrganisationEntity>? organisations;
  final DioException? exception;

  const RemoteOrganisationsState({
    this.organisations,
    this.exception,
  });

  @override
  List<Object?> get props => [organisations, exception];
}

class RemoteOrganisationsLoading extends RemoteOrganisationsState {
  const RemoteOrganisationsLoading();
}

class RemoteOrganisationsLoaded extends RemoteOrganisationsState {
  const RemoteOrganisationsLoaded(List<OrganisationEntity> organisation) : super(organisations: organisation);
}

class RemoteOrganisationsError extends RemoteOrganisationsState {
  const RemoteOrganisationsError(DioException exception) : super(exception: exception);
}
