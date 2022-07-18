// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_term_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationTermModel _$LocationTermModelFromJson(Map<String, dynamic> json) {
  return _LocationTermModel.fromJson(json);
}

/// @nodoc
mixin _$LocationTermModel {
  int get offset => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationTermModelCopyWith<LocationTermModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationTermModelCopyWith<$Res> {
  factory $LocationTermModelCopyWith(
          LocationTermModel value, $Res Function(LocationTermModel) then) =
      _$LocationTermModelCopyWithImpl<$Res>;
  $Res call({int offset, String value});
}

/// @nodoc
class _$LocationTermModelCopyWithImpl<$Res>
    implements $LocationTermModelCopyWith<$Res> {
  _$LocationTermModelCopyWithImpl(this._value, this._then);

  final LocationTermModel _value;
  // ignore: unused_field
  final $Res Function(LocationTermModel) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LocationTermModelCopyWith<$Res>
    implements $LocationTermModelCopyWith<$Res> {
  factory _$$_LocationTermModelCopyWith(_$_LocationTermModel value,
          $Res Function(_$_LocationTermModel) then) =
      __$$_LocationTermModelCopyWithImpl<$Res>;
  @override
  $Res call({int offset, String value});
}

/// @nodoc
class __$$_LocationTermModelCopyWithImpl<$Res>
    extends _$LocationTermModelCopyWithImpl<$Res>
    implements _$$_LocationTermModelCopyWith<$Res> {
  __$$_LocationTermModelCopyWithImpl(
      _$_LocationTermModel _value, $Res Function(_$_LocationTermModel) _then)
      : super(_value, (v) => _then(v as _$_LocationTermModel));

  @override
  _$_LocationTermModel get _value => super._value as _$_LocationTermModel;

  @override
  $Res call({
    Object? offset = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_LocationTermModel(
      offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationTermModel implements _LocationTermModel {
  const _$_LocationTermModel(this.offset, this.value);

  factory _$_LocationTermModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationTermModelFromJson(json);

  @override
  final int offset;
  @override
  final String value;

  @override
  String toString() {
    return 'LocationTermModel(offset: $offset, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationTermModel &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_LocationTermModelCopyWith<_$_LocationTermModel> get copyWith =>
      __$$_LocationTermModelCopyWithImpl<_$_LocationTermModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationTermModelToJson(this);
  }
}

abstract class _LocationTermModel implements LocationTermModel {
  const factory _LocationTermModel(final int offset, final String value) =
      _$_LocationTermModel;

  factory _LocationTermModel.fromJson(Map<String, dynamic> json) =
      _$_LocationTermModel.fromJson;

  @override
  int get offset => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocationTermModelCopyWith<_$_LocationTermModel> get copyWith =>
      throw _privateConstructorUsedError;
}
