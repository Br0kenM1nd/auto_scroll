// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserText _$$_UserTextFromJson(Map<String, dynamic> json) => _$_UserText(
      dir: json['dir'] as String,
      text: (json['text'] as List<dynamic>).map((e) => e as String).toList(),
      speed: json['speed'] as int,
      style: TextStyleExtension.fromJson(json['style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserTextToJson(_$_UserText instance) =>
    <String, dynamic>{
      'dir': instance.dir,
      'text': instance.text,
      'speed': instance.speed,
      'style': TextStyleExtension.toJson(instance.style),
    };
