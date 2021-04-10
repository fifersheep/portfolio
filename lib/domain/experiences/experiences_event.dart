part of 'experiences_bloc.dart';

@freezed
class ExperiencesEvent with _$ExperiencesEvent {
  const factory ExperiencesEvent.loadExperiences() = LoadExperiences;
}
