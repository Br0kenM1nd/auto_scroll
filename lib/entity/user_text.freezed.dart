// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserText _$UserTextFromJson(Map<String, dynamic> json) {
  return _UserText.fromJson(json);
}

/// @nodoc
mixin _$UserText {
  String get title => throw _privateConstructorUsedError;
  List<String> get text => throw _privateConstructorUsedError;
  int get speed => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: TextStyleExtension.fromJson, toJson: TextStyleExtension.toJson)
  TextStyle get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTextCopyWith<UserText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTextCopyWith<$Res> {
  factory $UserTextCopyWith(UserText value, $Res Function(UserText) then) =
      _$UserTextCopyWithImpl<$Res, UserText>;
  @useResult
  $Res call(
      {String title,
      List<String> text,
      int speed,
      @JsonKey(fromJson: TextStyleExtension.fromJson, toJson: TextStyleExtension.toJson)
          TextStyle style});
}

/// @nodoc
class _$UserTextCopyWithImpl<$Res, $Val extends UserText>
    implements $UserTextCopyWith<$Res> {
  _$UserTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? speed = null,
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as List<String>,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserTextCopyWith<$Res> implements $UserTextCopyWith<$Res> {
  factory _$$_UserTextCopyWith(
          _$_UserText value, $Res Function(_$_UserText) then) =
      __$$_UserTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<String> text,
      int speed,
      @JsonKey(fromJson: TextStyleExtension.fromJson, toJson: TextStyleExtension.toJson)
          TextStyle style});
}

/// @nodoc
class __$$_UserTextCopyWithImpl<$Res>
    extends _$UserTextCopyWithImpl<$Res, _$_UserText>
    implements _$$_UserTextCopyWith<$Res> {
  __$$_UserTextCopyWithImpl(
      _$_UserText _value, $Res Function(_$_UserText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? text = null,
    Object? speed = null,
    Object? style = null,
  }) {
    return _then(_$_UserText(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value._text
          : text // ignore: cast_nullable_to_non_nullable
              as List<String>,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserText implements _UserText {
  const _$_UserText(
      {required this.title,
      required final List<String> text,
      required this.speed,
      @JsonKey(fromJson: TextStyleExtension.fromJson, toJson: TextStyleExtension.toJson)
          required this.style})
      : _text = text;

  factory _$_UserText.fromJson(Map<String, dynamic> json) =>
      _$$_UserTextFromJson(json);

  @override
  final String title;
  final List<String> _text;
  @override
  List<String> get text {
    if (_text is EqualUnmodifiableListView) return _text;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_text);
  }

  @override
  final int speed;
  @override
  @JsonKey(
      fromJson: TextStyleExtension.fromJson, toJson: TextStyleExtension.toJson)
  final TextStyle style;

  @override
  String toString() {
    return 'UserText(title: $title, text: $text, speed: $speed, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserText &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._text, _text) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_text), speed, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserTextCopyWith<_$_UserText> get copyWith =>
      __$$_UserTextCopyWithImpl<_$_UserText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserTextToJson(
      this,
    );
  }
}

abstract class _UserText implements UserText {
  const factory _UserText(
      {required final String title,
      required final List<String> text,
      required final int speed,
      @JsonKey(fromJson: TextStyleExtension.fromJson, toJson: TextStyleExtension.toJson)
          required final TextStyle style}) = _$_UserText;

  factory _UserText.fromJson(Map<String, dynamic> json) = _$_UserText.fromJson;

  @override
  String get title;
  @override
  List<String> get text;
  @override
  int get speed;
  @override
  @JsonKey(
      fromJson: TextStyleExtension.fromJson, toJson: TextStyleExtension.toJson)
  TextStyle get style;
  @override
  @JsonKey(ignore: true)
  _$$_UserTextCopyWith<_$_UserText> get copyWith =>
      throw _privateConstructorUsedError;
}
