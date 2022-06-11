// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item_tile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartItemTileEvent {
  List<ItemInOrderModel> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ItemInOrderModel> items) loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ItemInOrderModel> items)? loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ItemInOrderModel> items)? loadItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItems value) loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadItems value)? loadItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItems value)? loadItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemTileEventCopyWith<CartItemTileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemTileEventCopyWith<$Res> {
  factory $CartItemTileEventCopyWith(
          CartItemTileEvent value, $Res Function(CartItemTileEvent) then) =
      _$CartItemTileEventCopyWithImpl<$Res>;
  $Res call({List<ItemInOrderModel> items});
}

/// @nodoc
class _$CartItemTileEventCopyWithImpl<$Res>
    implements $CartItemTileEventCopyWith<$Res> {
  _$CartItemTileEventCopyWithImpl(this._value, this._then);

  final CartItemTileEvent _value;
  // ignore: unused_field
  final $Res Function(CartItemTileEvent) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemInOrderModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_LoadItemsCopyWith<$Res>
    implements $CartItemTileEventCopyWith<$Res> {
  factory _$$_LoadItemsCopyWith(
          _$_LoadItems value, $Res Function(_$_LoadItems) then) =
      __$$_LoadItemsCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemInOrderModel> items});
}

/// @nodoc
class __$$_LoadItemsCopyWithImpl<$Res>
    extends _$CartItemTileEventCopyWithImpl<$Res>
    implements _$$_LoadItemsCopyWith<$Res> {
  __$$_LoadItemsCopyWithImpl(
      _$_LoadItems _value, $Res Function(_$_LoadItems) _then)
      : super(_value, (v) => _then(v as _$_LoadItems));

  @override
  _$_LoadItems get _value => super._value as _$_LoadItems;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_LoadItems(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemInOrderModel>,
    ));
  }
}

/// @nodoc

class _$_LoadItems implements _LoadItems {
  const _$_LoadItems({required final List<ItemInOrderModel> items})
      : _items = items;

  final List<ItemInOrderModel> _items;
  @override
  List<ItemInOrderModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartItemTileEvent.loadItems(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadItems &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_LoadItemsCopyWith<_$_LoadItems> get copyWith =>
      __$$_LoadItemsCopyWithImpl<_$_LoadItems>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ItemInOrderModel> items) loadItems,
  }) {
    return loadItems(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<ItemInOrderModel> items)? loadItems,
  }) {
    return loadItems?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ItemInOrderModel> items)? loadItems,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadItems value) loadItems,
  }) {
    return loadItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadItems value)? loadItems,
  }) {
    return loadItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadItems value)? loadItems,
    required TResult orElse(),
  }) {
    if (loadItems != null) {
      return loadItems(this);
    }
    return orElse();
  }
}

abstract class _LoadItems implements CartItemTileEvent {
  const factory _LoadItems({required final List<ItemInOrderModel> items}) =
      _$_LoadItems;

  @override
  List<ItemInOrderModel> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoadItemsCopyWith<_$_LoadItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartItemTileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemTileStateCopyWith<$Res> {
  factory $CartItemTileStateCopyWith(
          CartItemTileState value, $Res Function(CartItemTileState) then) =
      _$CartItemTileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartItemTileStateCopyWithImpl<$Res>
    implements $CartItemTileStateCopyWith<$Res> {
  _$CartItemTileStateCopyWithImpl(this._value, this._then);

  final CartItemTileState _value;
  // ignore: unused_field
  final $Res Function(CartItemTileState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartItemTileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CartItemTileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartItemTileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CartItemTileStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CartItemTileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartItemTileState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$CartItemTileStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Loaded(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      final Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)
      : _data = data;

  final Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> _data;
  @override
  Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'CartItemTileState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartItemTileState {
  const factory _Loaded(
      final Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>>
          data) = _$_Loaded;

  Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$CartItemTileStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CartItemTileState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<ItemInOrderModel, MapEntry<ItemModel, CategoryModel?>> data)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartItemTileState {
  const factory _Error() = _$_Error;
}
