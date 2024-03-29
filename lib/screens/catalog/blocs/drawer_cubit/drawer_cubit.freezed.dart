// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DrawerState {
  List<List<CategoryModel>> get categoriesHistory =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawerStateCopyWith<DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res>;
  $Res call({List<List<CategoryModel>> categoriesHistory});
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res> implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  final DrawerState _value;
  // ignore: unused_field
  final $Res Function(DrawerState) _then;

  @override
  $Res call({
    Object? categoriesHistory = freezed,
  }) {
    return _then(_value.copyWith(
      categoriesHistory: categoriesHistory == freezed
          ? _value.categoriesHistory
          : categoriesHistory // ignore: cast_nullable_to_non_nullable
              as List<List<CategoryModel>>,
    ));
  }
}

/// @nodoc
abstract class _$$_DrawerStateCopyWith<$Res>
    implements $DrawerStateCopyWith<$Res> {
  factory _$$_DrawerStateCopyWith(
          _$_DrawerState value, $Res Function(_$_DrawerState) then) =
      __$$_DrawerStateCopyWithImpl<$Res>;
  @override
  $Res call({List<List<CategoryModel>> categoriesHistory});
}

/// @nodoc
class __$$_DrawerStateCopyWithImpl<$Res> extends _$DrawerStateCopyWithImpl<$Res>
    implements _$$_DrawerStateCopyWith<$Res> {
  __$$_DrawerStateCopyWithImpl(
      _$_DrawerState _value, $Res Function(_$_DrawerState) _then)
      : super(_value, (v) => _then(v as _$_DrawerState));

  @override
  _$_DrawerState get _value => super._value as _$_DrawerState;

  @override
  $Res call({
    Object? categoriesHistory = freezed,
  }) {
    return _then(_$_DrawerState(
      categoriesHistory == freezed
          ? _value._categoriesHistory
          : categoriesHistory // ignore: cast_nullable_to_non_nullable
              as List<List<CategoryModel>>,
    ));
  }
}

/// @nodoc

class _$_DrawerState implements _DrawerState {
  const _$_DrawerState(final List<List<CategoryModel>> categoriesHistory)
      : _categoriesHistory = categoriesHistory;

  final List<List<CategoryModel>> _categoriesHistory;
  @override
  List<List<CategoryModel>> get categoriesHistory {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesHistory);
  }

  @override
  String toString() {
    return 'DrawerState(categoriesHistory: $categoriesHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DrawerState &&
            const DeepCollectionEquality()
                .equals(other._categoriesHistory, _categoriesHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoriesHistory));

  @JsonKey(ignore: true)
  @override
  _$$_DrawerStateCopyWith<_$_DrawerState> get copyWith =>
      __$$_DrawerStateCopyWithImpl<_$_DrawerState>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState(
      final List<List<CategoryModel>> categoriesHistory) = _$_DrawerState;

  @override
  List<List<CategoryModel>> get categoriesHistory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DrawerStateCopyWith<_$_DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}
