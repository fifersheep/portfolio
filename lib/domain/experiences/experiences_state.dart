part of 'experiences_bloc.dart';

@freezed
abstract class ExperiencesState with _$ExperiencesState {
  const factory ExperiencesState.loading() = ExperiencesLoading;
  const factory ExperiencesState.loaded(List<ExperienceState> experiences) = ExperiencesLoaded;
  const factory ExperiencesState.error() = ExperiencesError;
}
