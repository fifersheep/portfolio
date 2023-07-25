// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      id: json['id'] as int,
      title: json['title'] as String,
      summary: json['summary'] as String,
      detail: json['detail'] as String,
      coverImageUrl: json['cover_img_url'] as String,
      tags: (json['tags'] as List<dynamic>).map(ProjectTag.fromJson).toList(),
      callToActions: (json['call_to_actions'] as List<dynamic>).map(ProjectCallToAction.fromJson).toList(),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'detail': instance.detail,
      'cover_img_url': instance.coverImageUrl,
      'tags': instance.tags,
      'call_to_actions': instance.callToActions,
    };

_$_ProjectTag _$$_ProjectTagFromJson(Map<String, dynamic> json) => _$_ProjectTag(
      id: json['id'] as int,
      label: json['label'] as String,
      color: json['color'] as String?,
      labelColor: json['label_color'] as String,
      style: json['style'] as String,
    );

Map<String, dynamic> _$$_ProjectTagToJson(_$_ProjectTag instance) => <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'color': instance.color,
      'label_color': instance.labelColor,
      'style': instance.style,
    };

_$_ProjectCallToAction _$$_ProjectCallToActionFromJson(Map<String, dynamic> json) => _$_ProjectCallToAction(
      id: json['id'] as int,
      type: json['type'] as String,
      action: json['action'] as String,
      style: json['style'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$$_ProjectCallToActionToJson(_$_ProjectCallToAction instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'action': instance.action,
      'style': instance.style,
      'label': instance.label,
    };
