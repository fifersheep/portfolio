import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/domain/core/formatter/date_formatter.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/domain/experiences/experience_state.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';

part 'experiences_bloc.freezed.dart';

part 'experiences_event.dart';

part 'experiences_state.dart';

@lazySingleton
class ExperiencesBloc extends Bloc<ExperiencesEvent, ExperiencesState> {
  ExperiencesBloc(this._repository, this._dateFormatter);

  final ExperiencesRepository _repository;
  final DateFormatter _dateFormatter;

  @override
  ExperiencesState get initialState => const ExperiencesState.loading();

  @override
  Stream<ExperiencesState> mapEventToState(ExperiencesEvent event) async* {
    if (event is LoadExperiences) {
      final payload = await _repository.getExperiences();
      yield payload.fold(
        (failure) => const ExperiencesState.error(),
        (experiences) => ExperiencesState.loaded(experiences.map(_fromExperience).toList()),
      );
    }
  }

  ExperienceState _fromExperience(Experience experience) {
    final categoryState = _categoryState[experience.category];

    final singleDateCategories = [
      ExperienceCategory.home,
      ExperienceCategory.love,
    ];

    final formatterFunc = (singleDateCategories.contains(experience.category))
        ? _dateFormatter.monthYear(experience.startDate)
        : _dateFormatter.monthYearRange(experience.startDate, experience.endDate);

    return ExperienceState(
        title: experience.title,
        location: experience.location,
        content: experience.content,
        timeframe: formatterFunc,
        icon: categoryState.icon,
        color: categoryState.color);
  }

  final _categoryState = {
    ExperienceCategory.work: const ExperienceStyling(ExperienceColor.green, ExperienceIcon.code),
    ExperienceCategory.studies: const ExperienceStyling(ExperienceColor.red, ExperienceIcon.book),
    ExperienceCategory.home: const ExperienceStyling(ExperienceColor.orange, ExperienceIcon.home),
    ExperienceCategory.love: const ExperienceStyling(ExperienceColor.purple, ExperienceIcon.heart),
    ExperienceCategory.unknown: const ExperienceStyling(ExperienceColor.blue, ExperienceIcon.done),
  };
}

class ExperienceStyling {
  final ExperienceColor color;
  final ExperienceIcon icon;

  const ExperienceStyling(this.color, this.icon);
}
