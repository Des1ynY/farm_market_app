// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_icon')
  String? get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  String? get parentCategory => throw _privateConstructorUsedError;
  List<String>? get items => throw _privateConstructorUsedError;
  List<String>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String? name,
      @JsonKey(name: 'category_icon') String? icon,
      @JsonKey(name: 'parent') String? parentCategory,
      List<String>? items,
      List<String>? children});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? parentCategory = freezed,
    Object? items = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategory: parentCategory == freezed
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$_CategoryModelCopyWith(
          _$_CategoryModel value, $Res Function(_$_CategoryModel) then) =
      __$$_CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String? name,
      @JsonKey(name: 'category_icon') String? icon,
      @JsonKey(name: 'parent') String? parentCategory,
      List<String>? items,
      List<String>? children});
}

/// @nodoc
class __$$_CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$$_CategoryModelCopyWith<$Res> {
  __$$_CategoryModelCopyWithImpl(
      _$_CategoryModel _value, $Res Function(_$_CategoryModel) _then)
      : super(_value, (v) => _then(v as _$_CategoryModel));

  @override
  _$_CategoryModel get _value => super._value as _$_CategoryModel;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? parentCategory = freezed,
    Object? items = freezed,
    Object? children = freezed,
  }) {
    return _then(_$_CategoryModel(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategory == freezed
          ? _value.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      children == freezed
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel implements _CategoryModel {
  const _$_CategoryModel(
      this.uid,
      this.name,
      @JsonKey(name: 'category_icon') this.icon,
      @JsonKey(name: 'parent') this.parentCategory,
      final List<String>? items,
      final List<String>? children)
      : _items = items,
        _children = children;

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  final String? uid;
  @override
  final String? name;
  @override
  @JsonKey(name: 'category_icon')
  final String? icon;
  @override
  @JsonKey(name: 'parent')
  final String? parentCategory;
  final List<String>? _items;
  @override
  List<String>? get items {
    final value = _items;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _children;
  @override
  List<String>? get children {
    final value = _children;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryModel(uid: $uid, name: $name, icon: $icon, parentCategory: $parentCategory, items: $items, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryModel &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality()
                .equals(other.parentCategory, parentCategory) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(parentCategory),
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      __$$_CategoryModelCopyWithImpl<_$_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(this);
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      final String? uid,
      final String? name,
      @JsonKey(name: 'category_icon') final String? icon,
      @JsonKey(name: 'parent') final String? parentCategory,
      final List<String>? items,
      final List<String>? children) = _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'category_icon')
  String? get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'parent')
  String? get parentCategory => throw _privateConstructorUsedError;
  @override
  List<String>? get items => throw _privateConstructorUsedError;
  @override
  List<String>? get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
