import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  static Map<String, dynamic> toJson(TextStyle style) => {
    'fontFamily': style.fontFamily,
    'fontSize': style.fontSize,
    'fontWeight': style.fontWeight?.index,
    'color': style.color?.value,
  };

  static TextStyle fromJson(Map<String, dynamic> json) => TextStyle(
    fontFamily: json['fontFamily'],
    fontSize: json['fontSize'],
    fontWeight: json['fontWeight'] == null ? null : FontWeight.values[json['fontWeight']],
    color: json['color'] == null ? null : Color(json['color']),
  );
}
