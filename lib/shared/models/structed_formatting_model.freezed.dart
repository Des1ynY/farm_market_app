// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'structed_formatting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StructuredFormattingModel _$StructuredFormattingModelFromJson(
    Map<String, dynamic> json) {
  return _StructuredFormattingModel.fromJson(json);
}

/// @nodoc
mixin _$StructuredFormattingModel {
  @JsonKey(name: 'main_text')
  String? get mainText => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_text_matched_substrings')
  List<MatchedSubstringModel>? get mainTextMatch =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_text')
  String? get secondaryText => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_text_matched_substrings')
  List<MatchedSubstringModel>? get secondaryTextMatch =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StructuredFormattingModelCopyWith<StructuredFormattingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructuredFormattingModelCopyWith<$Res> {
  factory $StructuredFormattingModelCopyWith(StructuredFormattingModel value,
          $Res Function(StructuredFormattingModel) then) =
      _$StructuredFormattingModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'main_text')
          String? mainText,
      @JsonKey(name: 'main_text_matched_substrings')
          List<MatchedSubstringModel>? mainTextMatch,
      @JsonKey(name: 'secondary_text')
          String? secondaryText,
      @JsonKey(name: 'secondary_text_matched_substrings')
          List<MatchedSubstringModel>? secondaryTextMatch});
}

/// @nodoc
class _$StructuredFormattingModelCopyWithImpl<$Res>
    implements $StructuredFormattingModelCopyWith<$Res> {
  _$StructuredFormattingModelCopyWithImpl(this._value, this._then);

  final StructuredFormattingModel _value;
  // ignore: unused_field
  final $Res Function(StructuredFormattingModel) _then;

  @override
  $Res call({
    Object? mainText = freezed,
    Object? mainTextMatch = freezed,
    Object? secondaryText = freezed,
    Object? secondaryTextMatch = freezed,
  }) {
    return _then(_value.copyWith(
      mainText: mainText == freezed
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTextMatch: mainTextMatch == freezed
          ? _value.mainTextMatch
          : mainTextMatch // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstringModel>?,
      secondaryText: secondaryText == freezed
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryTextMatch: secondaryTextMatch == freezed
          ? _value.secondaryTextMatch
          : secondaryTextMatch // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstringModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_StructuredFormattingModelCopyWith<$Res>
    implements $StructuredFormattingModelCopyWith<$Res> {
  factory _$$_StructuredFormattingModelCopyWith(
          _$_StructuredFormattingModel value,
          $Res Function(_$_StructuredFormattingModel) then) =
      __$$_StructuredFormattingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'main_text')
          String? mainText,
      @JsonKey(name: 'main_text_matched_substrings')
          List<MatchedSubstringModel>? mainTextMatch,
      @JsonKey(name: 'secondary_text')
          String? secondaryText,
      @JsonKey(name: 'secondary_text_matched_substrings')
          List<MatchedSubstringModel>? secondaryTextMatch});
}

/// @nodoc
class __$$_StructuredFormattingModelCopyWithImpl<$Res>
    extends _$StructuredFormattingModelCopyWithImpl<$Res>
    implements _$$_StructuredFormattingModelCopyWith<$Res> {
  __$$_StructuredFormattingModelCopyWithImpl(
      _$_StructuredFormattingModel _value,
      $Res Function(_$_StructuredFormattingModel) _then)
      : super(_value, (v) => _then(v as _$_StructuredFormattingModel));

  @override
  _$_StructuredFormattingModel get _value =>
      super._value as _$_StructuredFormattingModel;

  @override
  $Res call({
    Object? mainText = freezed,
    Object? mainTextMatch = freezed,
    Object? secondaryText = freezed,
    Object? secondaryTextMatch = freezed,
  }) {
    return _then(_$_StructuredFormattingModel(
      mainText == freezed
          ? _value.mainText
          : mainText // ignore: cast_nullable_to_non_nullable
              as String?,
      mainTextMatch == freezed
          ? _value._mainTextMatch
          : mainTextMatch // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstringModel>?,
      secondaryText == freezed
          ? _value.secondaryText
          : secondaryText // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryTextMatch == freezed
          ? _value._secondaryTextMatch
          : secondaryTextMatch // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstringModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StructuredFormattingModel implements _StructuredFormattingModel {
  const _$_StructuredFormattingModel(
      @JsonKey(name: 'main_text')
          this.mainText,
      @JsonKey(name: 'main_text_matched_substrings')
          final List<MatchedSubstringModel>? mainTextMatch,
      @JsonKey(name: 'secondary_text')
          this.secondaryText,
      @JsonKey(name: 'secondary_text_matched_substrings')
          final List<MatchedSubstringModel>? secondaryTextMatch)
      : _mainTextMatch = mainTextMatch,
        _secondaryTextMatch = secondaryTextMatch;

  factory _$_StructuredFormattingModel.fromJson(Map<String, dynamic> json) =>
      _$$_StructuredFormattingModelFromJson(json);

  @override
  @JsonKey(name: 'main_text')
  final String? mainText;
  final List<MatchedSubstringModel>? _mainTextMatch;
  @override
  @JsonKey(name: 'main_text_matched_substrings')
  List<MatchedSubstringModel>? get mainTextMatch {
    final value = _mainTextMatch;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'secondary_text')
  final String? secondaryText;
  final List<MatchedSubstringModel>? _secondaryTextMatch;
  @override
  @JsonKey(name: 'secondary_text_matched_substrings')
  List<MatchedSubstringModel>? get secondaryTextMatch {
    final value = _secondaryTextMatch;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StructuredFormattingModel(mainText: $mainText, mainTextMatch: $mainTextMatch, secondaryText: $secondaryText, secondaryTextMatch: $secondaryTextMatch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StructuredFormattingModel &&
            const DeepCollectionEquality().equals(other.mainText, mainText) &&
            const DeepCollectionEquality()
                .equals(other._mainTextMatch, _mainTextMatch) &&
            const DeepCollectionEquality()
                .equals(other.secondaryText, secondaryText) &&
            const DeepCollectionEquality()
                .equals(other._secondaryTextMatch, _secondaryTextMatch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainText),
      const DeepCollectionEquality().hash(_mainTextMatch),
      const DeepCollectionEquality().hash(secondaryText),
      const DeepCollectionEquality().hash(_secondaryTextMatch));

  @JsonKey(ignore: true)
  @override
  _$$_StructuredFormattingModelCopyWith<_$_StructuredFormattingModel>
      get copyWith => __$$_StructuredFormattingModelCopyWithImpl<
          _$_StructuredFormattingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StructuredFormattingModelToJson(this);
  }
}

abstract class _StructuredFormattingModel implements StructuredFormattingModel {
  const factory _StructuredFormattingModel(
          @JsonKey(name: 'main_text')
              final String? mainText,
          @JsonKey(name: 'main_text_matched_substrings')
              final List<MatchedSubstringModel>? mainTextMatch,
          @JsonKey(name: 'secondary_text')
              final String? secondaryText,
          @JsonKey(name: 'secondary_text_matched_substrings')
              final List<MatchedSubstringModel>? secondaryTextMatch) =
      _$_StructuredFormattingModel;

  factory _StructuredFormattingModel.fromJson(Map<String, dynamic> json) =
      _$_StructuredFormattingModel.fromJson;

  @override
  @JsonKey(name: 'main_text')
  String? get mainText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'main_text_matched_substrings')
  List<MatchedSubstringModel>? get mainTextMatch =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'secondary_text')
  String? get secondaryText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'secondary_text_matched_substrings')
  List<MatchedSubstringModel>? get secondaryTextMatch =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StructuredFormattingModelCopyWith<_$_StructuredFormattingModel>
      get copyWith => throw _privateConstructorUsedError;
}
