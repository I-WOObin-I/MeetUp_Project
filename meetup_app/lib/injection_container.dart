import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meetup_app/features/clubs_feature/data/data_sources/remote/clubs_api_service.dart';
import 'package:meetup_app/features/clubs_feature/data/repository/club_repository_impl.dart';
import 'package:meetup_app/features/clubs_feature/domain/repository/club_repository.dart';
import 'package:meetup_app/features/clubs_feature/domain/usecases/get_club.dart';
import 'package:meetup_app/features/clubs_feature/presentation/bloc/club/remote/remote_club_bloc.dart';
import 'package:meetup_app/features/lfg_feature/data/data_sources/remote/lfg_posts_api_service.dart';
import 'package:meetup_app/features/lfg_feature/data/repository/lfg_post_repository_impl.dart';
import 'package:meetup_app/features/lfg_feature/domain/repository/lfg_post_repository.dart';
import 'package:meetup_app/features/lfg_feature/domain/usecases/get_lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/presentation/bloc/club/remote/remote_lfg_post_bloc.dart';
import 'package:meetup_app/features/organisations_feature/data/repository/organisation_repository_impl.dart';
import 'package:meetup_app/features/organisations_feature/domain/repository/organisation_repository.dart';
import 'package:meetup_app/features/organisations_feature/domain/usecases/get_organisation.dart';
import 'package:meetup_app/features/organisations_feature/presentation/bloc/club/remote/remote_organisation_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  //sl.registerSingleton<ClubsApiService>(ClubsApiService(sl()));
  sl.registerSingleton<LFGPostsApiService>(LFGPostsApiService(sl()));

  // Dependencies
  //sl.registerSingleton<ClubRepository>(ClubRepositoryImpl(sl()));
  //sl.registerSingleton<OrganisationRepository>(OrganisationRepositoryImpl(sl()));
  sl.registerSingleton<LFGPostRepository>(LFGPostRepositoryImpl(sl()));

  // Use Cases
  //sl.registerSingleton<GetClubUseCase>(GetClubUseCase(sl()));
  //sl.registerSingleton<GetOrganisationUseCase>(GetOrganisationUseCase(sl()));
  sl.registerSingleton<GetLFGPostUseCase>(GetLFGPostUseCase(sl()));

  // Blocs
  //sl.registerFactory<RemoteClubsBloc>(() => RemoteClubsBloc(sl()));
  //sl.registerFactory<RemoteOrganisationsBloc>(() => RemoteOrganisationsBloc(sl()));
  sl.registerFactory<RemoteLFGPostsBloc>(() => RemoteLFGPostsBloc(sl()));
}
