// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prophecies_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProphecyEntity _$ProphecyEntityFromJson(Map<String, dynamic> json) {
  return ProphecyEntity(
    value: (json['value'] as num)?.toDouble(),
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$ProphecyEntityToJson(ProphecyEntity instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };