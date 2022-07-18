// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'matched_substring_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchedSubstringModel _$MatchedSubstringModelFromJson(
    Map<String, dynamic> json) {
  return _MatchedSubstringModel.fromJson(json);
}

/// @nodoc
mixin _$MatchedSubstringModel {
  int get length => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchedSubstringModelCopyWith<MatchedSubstringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedSubstringModelCopyWith<$Res> {
  factory $MatchedSubstringModelCopyWith(MatchedSubstringModel value,
          $Res Function(MatchedSubstringModel) then) =
      _$MatchedSubstringModelCopyWithImpl<$Res>;
  $Res call({int length, int offset});
}

/// @nodoc
class _$MatchedSubstringModelCopyWithImpl<$Res>
    implements $MatchedSubstringModelCopyWith<$Res> {
  _$MatchedSubstringModelCopyWithImpl(this._value, this._then);

  final MatchedSubstringModel _value;
  // ignore: unused_field
  final $Res Function(MatchedSubstringModel) _then;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MatchedSubstringModelCopyWith<$Res>
    implements $MatchedSubstringModelCopyWith<$Res> {
  factory _$$_MatchedSubstringModelCopyWith(_$_MatchedSubstringModel value,
          $Res Function(_$_MatchedSubstringModel) then) =
      __$$_MatchedSubstringModelCopyWithImpl<$Res>;
  @override
  $Res call({int length, int offset});
}

/// @nodoc
class __$$_MatchedSubstringModelCopyWithImpl<$Res>
    extends _$MatchedSubstringModelCopyWithImpl<$Res>
    implements _$$_MatchedSubstringModelCopyWith<$Res> {
  __$$_MatchedSubstringModelCopyWithImpl(_$_MatchedSubstringModel _value,
      $Res Function(_$_MatchedSubstringModel) _then)
      : super(_value, (v) => _then(v as _$_MatchedSubstringModel));

  @override
  _$_MatchedSubstringModel get _value =>
      super._value as _$_MatchedSubstringModel;

  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_MatchedSubstringModel(
      length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchedSubstringModel implements _MatchedSubstringModel {
  const _$_MatchedSubstringModel(this.length, this.offset);

  factory _$_MatchedSubstringModel.fromJson(Map<String, dynamic> json) =>
      _$$_MatchedSubstringModelFromJson(json);

  @override
  final int length;
  @override
  final int offset;

  @override
  String toString() {
    return 'MatchedSubstringModel(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchedSubstringModel &&
            const DeepCollectionEquality().equals(other.length, length) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(length),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  _$$_MatchedSubstringModelCopyWith<_$_MatchedSubstringModel> get copyWith =>
      __$$_MatchedSubstringModelCopyWithImpl<_$_MatchedSubstringModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchedSubstringModelToJson(this);
  }
}

abstract class _MatchedSubstringModel implements MatchedSubstringModel {
  const factory _MatchedSubstringModel(final int length, final int offset) =
      _$_MatchedSubstringModel;

  factory _MatchedSubstringModel.fromJson(Map<String, dynamic> json) =
      _$_MatchedSubstringModel.fromJson;

  @override
  int get length => throw _privateConstructorUsedError;
  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MatchedSubstringModelCopyWith<_$_MatchedSubstringModel> get copyWith =>
      throw _privateConstructorUsedError;
}
