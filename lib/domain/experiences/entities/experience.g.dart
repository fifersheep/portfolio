// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Experience _$$_ExperienceFromJson(Map<String, dynamic> json) => _$_Experience(
      id: json['id'] as int,
      title: json['title'] as String,
      location: json['location'] as String,
      content: json['content'] as String,
      startDate: json['start_date'] == null ? null : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null ? null : DateTime.parse(json['end_date'] as String),
      category: $enumDecode(_$ExperienceCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$_ExperienceToJson(_$_Experience instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'content': instance.content,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'category': _$ExperienceCategoryEnumMap[instance.category]!,
    };

const _$ExperienceCategoryEnumMap = {
  ExperienceCategory.unknown: 'unknown',
  ExperienceCategory.work: 'work',
  ExperienceCategory.studies: 'studies',
  ExperienceCategory.home: 'home',
  ExperienceCategory.love: 'love',
};
