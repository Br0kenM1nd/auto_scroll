import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'text_style_extension.dart';

part 'user_text.freezed.dart';

part 'user_text.g.dart';

@freezed
class UserText with _$UserText {
  const factory UserText({
    required String dir,
    required List<String> text,
    required int speed,
    @JsonKey(
      fromJson: TextStyleExtension.fromJson,
      toJson: TextStyleExtension.toJson,
    )
        required TextStyle style,
  }) = _UserText;

  factory UserText.fromJson(Map<String, dynamic> json) =>
      _$UserTextFromJson(json);

  const UserText._();

  String get title {
    final list = dir.split('/').last.split('.')..removeLast();
    return list.join('.');
  }
}
