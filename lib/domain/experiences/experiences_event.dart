part of 'experiences_bloc.dart';

@freezed
abstract class ExperiencesEvent with _$ExperiencesEvent {
  const factory ExperiencesEvent.loadExperiences() = LoadExperiences;
}
