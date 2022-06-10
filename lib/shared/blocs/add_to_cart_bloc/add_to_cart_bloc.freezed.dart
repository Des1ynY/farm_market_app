// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_to_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddToCartEvent {
  ItemInOrderModel get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInOrderModel item) addToCart,
    required TResult Function(ItemInOrderModel item) increaseCount,
    required TResult Function(ItemInOrderModel item) decreaseCount,
    required TResult Function(ItemInOrderModel item) deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_IncreaseCount value) increaseCount,
    required TResult Function(_DecreaseCount value) decreaseCount,
    required TResult Function(_DeleteItem value) deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddToCartEventCopyWith<AddToCartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartEventCopyWith<$Res> {
  factory $AddToCartEventCopyWith(
          AddToCartEvent value, $Res Function(AddToCartEvent) then) =
      _$AddToCartEventCopyWithImpl<$Res>;
  $Res call({ItemInOrderModel item});

  $ItemInOrderModelCopyWith<$Res> get item;
}

/// @nodoc
class _$AddToCartEventCopyWithImpl<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  _$AddToCartEventCopyWithImpl(this._value, this._then);

  final AddToCartEvent _value;
  // ignore: unused_field
  final $Res Function(AddToCartEvent) _then;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInOrderModel,
    ));
  }

  @override
  $ItemInOrderModelCopyWith<$Res> get item {
    return $ItemInOrderModelCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$$_AddToCartCopyWith<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  @override
  $Res call({ItemInOrderModel item});

  @override
  $ItemInOrderModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$_AddToCartCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$$_AddToCartCopyWith<$Res> {
  __$$_AddToCartCopyWithImpl(
      _$_AddToCart _value, $Res Function(_$_AddToCart) _then)
      : super(_value, (v) => _then(v as _$_AddToCart));

  @override
  _$_AddToCart get _value => super._value as _$_AddToCart;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_AddToCart(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInOrderModel,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart(this.item);

  @override
  final ItemInOrderModel item;

  @override
  String toString() {
    return 'AddToCartEvent.addToCart(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCart &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      __$$_AddToCartCopyWithImpl<_$_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInOrderModel item) addToCart,
    required TResult Function(ItemInOrderModel item) increaseCount,
    required TResult Function(ItemInOrderModel item) decreaseCount,
    required TResult Function(ItemInOrderModel item) deleteItem,
  }) {
    return addToCart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
  }) {
    return addToCart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_IncreaseCount value) increaseCount,
    required TResult Function(_DecreaseCount value) decreaseCount,
    required TResult Function(_DeleteItem value) deleteItem,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements AddToCartEvent {
  const factory _AddToCart(final ItemInOrderModel item) = _$_AddToCart;

  @override
  ItemInOrderModel get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncreaseCountCopyWith<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  factory _$$_IncreaseCountCopyWith(
          _$_IncreaseCount value, $Res Function(_$_IncreaseCount) then) =
      __$$_IncreaseCountCopyWithImpl<$Res>;
  @override
  $Res call({ItemInOrderModel item});

  @override
  $ItemInOrderModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$_IncreaseCountCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$$_IncreaseCountCopyWith<$Res> {
  __$$_IncreaseCountCopyWithImpl(
      _$_IncreaseCount _value, $Res Function(_$_IncreaseCount) _then)
      : super(_value, (v) => _then(v as _$_IncreaseCount));

  @override
  _$_IncreaseCount get _value => super._value as _$_IncreaseCount;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_IncreaseCount(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInOrderModel,
    ));
  }
}

/// @nodoc

class _$_IncreaseCount implements _IncreaseCount {
  const _$_IncreaseCount(this.item);

  @override
  final ItemInOrderModel item;

  @override
  String toString() {
    return 'AddToCartEvent.increaseCount(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncreaseCount &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_IncreaseCountCopyWith<_$_IncreaseCount> get copyWith =>
      __$$_IncreaseCountCopyWithImpl<_$_IncreaseCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInOrderModel item) addToCart,
    required TResult Function(ItemInOrderModel item) increaseCount,
    required TResult Function(ItemInOrderModel item) decreaseCount,
    required TResult Function(ItemInOrderModel item) deleteItem,
  }) {
    return increaseCount(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
  }) {
    return increaseCount?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
    required TResult orElse(),
  }) {
    if (increaseCount != null) {
      return increaseCount(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_IncreaseCount value) increaseCount,
    required TResult Function(_DecreaseCount value) decreaseCount,
    required TResult Function(_DeleteItem value) deleteItem,
  }) {
    return increaseCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
  }) {
    return increaseCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) {
    if (increaseCount != null) {
      return increaseCount(this);
    }
    return orElse();
  }
}

abstract class _IncreaseCount implements AddToCartEvent {
  const factory _IncreaseCount(final ItemInOrderModel item) = _$_IncreaseCount;

  @override
  ItemInOrderModel get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IncreaseCountCopyWith<_$_IncreaseCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecreaseCountCopyWith<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  factory _$$_DecreaseCountCopyWith(
          _$_DecreaseCount value, $Res Function(_$_DecreaseCount) then) =
      __$$_DecreaseCountCopyWithImpl<$Res>;
  @override
  $Res call({ItemInOrderModel item});

  @override
  $ItemInOrderModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$_DecreaseCountCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$$_DecreaseCountCopyWith<$Res> {
  __$$_DecreaseCountCopyWithImpl(
      _$_DecreaseCount _value, $Res Function(_$_DecreaseCount) _then)
      : super(_value, (v) => _then(v as _$_DecreaseCount));

  @override
  _$_DecreaseCount get _value => super._value as _$_DecreaseCount;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_DecreaseCount(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInOrderModel,
    ));
  }
}

/// @nodoc

class _$_DecreaseCount implements _DecreaseCount {
  const _$_DecreaseCount(this.item);

  @override
  final ItemInOrderModel item;

  @override
  String toString() {
    return 'AddToCartEvent.decreaseCount(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecreaseCount &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_DecreaseCountCopyWith<_$_DecreaseCount> get copyWith =>
      __$$_DecreaseCountCopyWithImpl<_$_DecreaseCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInOrderModel item) addToCart,
    required TResult Function(ItemInOrderModel item) increaseCount,
    required TResult Function(ItemInOrderModel item) decreaseCount,
    required TResult Function(ItemInOrderModel item) deleteItem,
  }) {
    return decreaseCount(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
  }) {
    return decreaseCount?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
    required TResult orElse(),
  }) {
    if (decreaseCount != null) {
      return decreaseCount(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_IncreaseCount value) increaseCount,
    required TResult Function(_DecreaseCount value) decreaseCount,
    required TResult Function(_DeleteItem value) deleteItem,
  }) {
    return decreaseCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
  }) {
    return decreaseCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) {
    if (decreaseCount != null) {
      return decreaseCount(this);
    }
    return orElse();
  }
}

abstract class _DecreaseCount implements AddToCartEvent {
  const factory _DecreaseCount(final ItemInOrderModel item) = _$_DecreaseCount;

  @override
  ItemInOrderModel get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DecreaseCountCopyWith<_$_DecreaseCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteItemCopyWith<$Res>
    implements $AddToCartEventCopyWith<$Res> {
  factory _$$_DeleteItemCopyWith(
          _$_DeleteItem value, $Res Function(_$_DeleteItem) then) =
      __$$_DeleteItemCopyWithImpl<$Res>;
  @override
  $Res call({ItemInOrderModel item});

  @override
  $ItemInOrderModelCopyWith<$Res> get item;
}

/// @nodoc
class __$$_DeleteItemCopyWithImpl<$Res>
    extends _$AddToCartEventCopyWithImpl<$Res>
    implements _$$_DeleteItemCopyWith<$Res> {
  __$$_DeleteItemCopyWithImpl(
      _$_DeleteItem _value, $Res Function(_$_DeleteItem) _then)
      : super(_value, (v) => _then(v as _$_DeleteItem));

  @override
  _$_DeleteItem get _value => super._value as _$_DeleteItem;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$_DeleteItem(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInOrderModel,
    ));
  }
}

/// @nodoc

class _$_DeleteItem implements _DeleteItem {
  const _$_DeleteItem(this.item);

  @override
  final ItemInOrderModel item;

  @override
  String toString() {
    return 'AddToCartEvent.deleteItem(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteItem &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteItemCopyWith<_$_DeleteItem> get copyWith =>
      __$$_DeleteItemCopyWithImpl<_$_DeleteItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInOrderModel item) addToCart,
    required TResult Function(ItemInOrderModel item) increaseCount,
    required TResult Function(ItemInOrderModel item) decreaseCount,
    required TResult Function(ItemInOrderModel item) deleteItem,
  }) {
    return deleteItem(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
  }) {
    return deleteItem?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInOrderModel item)? addToCart,
    TResult Function(ItemInOrderModel item)? increaseCount,
    TResult Function(ItemInOrderModel item)? decreaseCount,
    TResult Function(ItemInOrderModel item)? deleteItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_IncreaseCount value) increaseCount,
    required TResult Function(_DecreaseCount value) decreaseCount,
    required TResult Function(_DeleteItem value) deleteItem,
  }) {
    return deleteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
  }) {
    return deleteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_IncreaseCount value)? increaseCount,
    TResult Function(_DecreaseCount value)? decreaseCount,
    TResult Function(_DeleteItem value)? deleteItem,
    required TResult orElse(),
  }) {
    if (deleteItem != null) {
      return deleteItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteItem implements AddToCartEvent {
  const factory _DeleteItem(final ItemInOrderModel item) = _$_DeleteItem;

  @override
  ItemInOrderModel get item => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteItemCopyWith<_$_DeleteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddToCartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartStateCopyWith<$Res> {
  factory $AddToCartStateCopyWith(
          AddToCartState value, $Res Function(AddToCartState) then) =
      _$AddToCartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddToCartStateCopyWithImpl<$Res>
    implements $AddToCartStateCopyWith<$Res> {
  _$AddToCartStateCopyWithImpl(this._value, this._then);

  final AddToCartState _value;
  // ignore: unused_field
  final $Res Function(AddToCartState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AddToCartStateCopyWithImpl<$Res>
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
    return 'AddToCartState.initial()';
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddToCartState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ProcessingCopyWith<$Res> {
  factory _$$_ProcessingCopyWith(
          _$_Processing value, $Res Function(_$_Processing) then) =
      __$$_ProcessingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProcessingCopyWithImpl<$Res>
    extends _$AddToCartStateCopyWithImpl<$Res>
    implements _$$_ProcessingCopyWith<$Res> {
  __$$_ProcessingCopyWithImpl(
      _$_Processing _value, $Res Function(_$_Processing) _then)
      : super(_value, (v) => _then(v as _$_Processing));

  @override
  _$_Processing get _value => super._value as _$_Processing;
}

/// @nodoc

class _$_Processing implements _Processing {
  const _$_Processing();

  @override
  String toString() {
    return 'AddToCartState.processing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Processing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements AddToCartState {
  const factory _Processing() = _$_Processing;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$AddToCartStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'AddToCartState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddToCartState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$AddToCartStateCopyWithImpl<$Res>
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
    return 'AddToCartState.error()';
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
    required TResult Function() processing,
    required TResult Function() success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? processing,
    TResult Function()? success,
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
    required TResult Function(_Processing value) processing,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Processing value)? processing,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AddToCartState {
  const factory _Error() = _$_Error;
}
