// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'structured_formatting')
  StructuredFormattingModel? get structuredFormatting =>
      throw _privateConstructorUsedError;
  List<LocationTermModel>? get terms => throw _privateConstructorUsedError;
  List<String>? get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call(
      {String? description,
      @JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      @JsonKey(name: 'structured_formatting')
          StructuredFormattingModel? structuredFormatting,
      List<LocationTermModel>? terms,
      List<String>? types});

  $StructuredFormattingModelCopyWith<$Res>? get structuredFormatting;
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: structuredFormatting == freezed
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormattingModel?,
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<LocationTermModel>?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $StructuredFormattingModelCopyWith<$Res>? get structuredFormatting {
    if (_value.structuredFormatting == null) {
      return null;
    }

    return $StructuredFormattingModelCopyWith<$Res>(
        _value.structuredFormatting!, (value) {
      return _then(_value.copyWith(structuredFormatting: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$_LocationModelCopyWith(
          _$_LocationModel value, $Res Function(_$_LocationModel) then) =
      __$$_LocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? description,
      @JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      @JsonKey(name: 'structured_formatting')
          StructuredFormattingModel? structuredFormatting,
      List<LocationTermModel>? terms,
      List<String>? types});

  @override
  $StructuredFormattingModelCopyWith<$Res>? get structuredFormatting;
}

/// @nodoc
class __$$_LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$$_LocationModelCopyWith<$Res> {
  __$$_LocationModelCopyWithImpl(
      _$_LocationModel _value, $Res Function(_$_LocationModel) _then)
      : super(_value, (v) => _then(v as _$_LocationModel));

  @override
  _$_LocationModel get _value => super._value as _$_LocationModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = freezed,
    Object? types = freezed,
  }) {
    return _then(_$_LocationModel(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting == freezed
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as StructuredFormattingModel?,
      terms == freezed
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<LocationTermModel>?,
      types == freezed
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel(
      this.description,
      @JsonKey(name: 'place_id') this.placeId,
      this.reference,
      @JsonKey(name: 'structured_formatting') this.structuredFormatting,
      final List<LocationTermModel>? terms,
      final List<String>? types)
      : _terms = terms,
        _types = types;

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  final String? description;
  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  final String? reference;
  @override
  @JsonKey(name: 'structured_formatting')
  final StructuredFormattingModel? structuredFormatting;
  final List<LocationTermModel>? _terms;
  @override
  List<LocationTermModel>? get terms {
    final value = _terms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _types;
  @override
  List<String>? get types {
    final value = _types;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationModel(description: $description, placeId: $placeId, reference: $reference, structuredFormatting: $structuredFormatting, terms: $terms, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModel &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.reference, reference) &&
            const DeepCollectionEquality()
                .equals(other.structuredFormatting, structuredFormatting) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(reference),
      const DeepCollectionEquality().hash(structuredFormatting),
      const DeepCollectionEquality().hash(_terms),
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      __$$_LocationModelCopyWithImpl<_$_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      final String? description,
      @JsonKey(name: 'place_id')
          final String? placeId,
      final String? reference,
      @JsonKey(name: 'structured_formatting')
          final StructuredFormattingModel? structuredFormatting,
      final List<LocationTermModel>? terms,
      final List<String>? types) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  @override
  String? get reference => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'structured_formatting')
  StructuredFormattingModel? get structuredFormatting =>
      throw _privateConstructorUsedError;
  @override
  List<LocationTermModel>? get terms => throw _privateConstructorUsedError;
  @override
  List<String>? get types => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
