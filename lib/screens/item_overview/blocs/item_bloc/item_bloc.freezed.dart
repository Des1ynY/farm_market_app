// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) imageSelected,
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function(PriceModel price) priceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_TabChanged value) tabChanged,
    required TResult Function(_PriceSelected value) priceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res> implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  final ItemEvent _value;
  // ignore: unused_field
  final $Res Function(ItemEvent) _then;
}

/// @nodoc
abstract class _$$_ImageSelectedCopyWith<$Res> {
  factory _$$_ImageSelectedCopyWith(
          _$_ImageSelected value, $Res Function(_$_ImageSelected) then) =
      __$$_ImageSelectedCopyWithImpl<$Res>;
  $Res call({String imageUrl});
}

/// @nodoc
class __$$_ImageSelectedCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements _$$_ImageSelectedCopyWith<$Res> {
  __$$_ImageSelectedCopyWithImpl(
      _$_ImageSelected _value, $Res Function(_$_ImageSelected) _then)
      : super(_value, (v) => _then(v as _$_ImageSelected));

  @override
  _$_ImageSelected get _value => super._value as _$_ImageSelected;

  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$_ImageSelected(
      imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageSelected implements _ImageSelected {
  const _$_ImageSelected(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'ItemEvent.imageSelected(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageSelected &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_ImageSelectedCopyWith<_$_ImageSelected> get copyWith =>
      __$$_ImageSelectedCopyWithImpl<_$_ImageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) imageSelected,
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function(PriceModel price) priceSelected,
  }) {
    return imageSelected(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
  }) {
    return imageSelected?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_TabChanged value) tabChanged,
    required TResult Function(_PriceSelected value) priceSelected,
  }) {
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
  }) {
    return imageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageSelected implements ItemEvent {
  const factory _ImageSelected(final String imageUrl) = _$_ImageSelected;

  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ImageSelectedCopyWith<_$_ImageSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TabChangedCopyWith<$Res> {
  factory _$$_TabChangedCopyWith(
          _$_TabChanged value, $Res Function(_$_TabChanged) then) =
      __$$_TabChangedCopyWithImpl<$Res>;
  $Res call({int tabIndex});
}

/// @nodoc
class __$$_TabChangedCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements _$$_TabChangedCopyWith<$Res> {
  __$$_TabChangedCopyWithImpl(
      _$_TabChanged _value, $Res Function(_$_TabChanged) _then)
      : super(_value, (v) => _then(v as _$_TabChanged));

  @override
  _$_TabChanged get _value => super._value as _$_TabChanged;

  @override
  $Res call({
    Object? tabIndex = freezed,
  }) {
    return _then(_$_TabChanged(
      tabIndex == freezed
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabChanged implements _TabChanged {
  const _$_TabChanged(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'ItemEvent.tabChanged(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabChanged &&
            const DeepCollectionEquality().equals(other.tabIndex, tabIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tabIndex));

  @JsonKey(ignore: true)
  @override
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      __$$_TabChangedCopyWithImpl<_$_TabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) imageSelected,
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function(PriceModel price) priceSelected,
  }) {
    return tabChanged(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
  }) {
    return tabChanged?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_TabChanged value) tabChanged,
    required TResult Function(_PriceSelected value) priceSelected,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class _TabChanged implements ItemEvent {
  const factory _TabChanged(final int tabIndex) = _$_TabChanged;

  int get tabIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_TabChangedCopyWith<_$_TabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PriceSelectedCopyWith<$Res> {
  factory _$$_PriceSelectedCopyWith(
          _$_PriceSelected value, $Res Function(_$_PriceSelected) then) =
      __$$_PriceSelectedCopyWithImpl<$Res>;
  $Res call({PriceModel price});

  $PriceModelCopyWith<$Res> get price;
}

/// @nodoc
class __$$_PriceSelectedCopyWithImpl<$Res> extends _$ItemEventCopyWithImpl<$Res>
    implements _$$_PriceSelectedCopyWith<$Res> {
  __$$_PriceSelectedCopyWithImpl(
      _$_PriceSelected _value, $Res Function(_$_PriceSelected) _then)
      : super(_value, (v) => _then(v as _$_PriceSelected));

  @override
  _$_PriceSelected get _value => super._value as _$_PriceSelected;

  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$_PriceSelected(
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel,
    ));
  }

  @override
  $PriceModelCopyWith<$Res> get price {
    return $PriceModelCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc

class _$_PriceSelected implements _PriceSelected {
  const _$_PriceSelected(this.price);

  @override
  final PriceModel price;

  @override
  String toString() {
    return 'ItemEvent.priceSelected(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceSelected &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_PriceSelectedCopyWith<_$_PriceSelected> get copyWith =>
      __$$_PriceSelectedCopyWithImpl<_$_PriceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageUrl) imageSelected,
    required TResult Function(int tabIndex) tabChanged,
    required TResult Function(PriceModel price) priceSelected,
  }) {
    return priceSelected(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
  }) {
    return priceSelected?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageUrl)? imageSelected,
    TResult Function(int tabIndex)? tabChanged,
    TResult Function(PriceModel price)? priceSelected,
    required TResult orElse(),
  }) {
    if (priceSelected != null) {
      return priceSelected(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_TabChanged value) tabChanged,
    required TResult Function(_PriceSelected value) priceSelected,
  }) {
    return priceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
  }) {
    return priceSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_TabChanged value)? tabChanged,
    TResult Function(_PriceSelected value)? priceSelected,
    required TResult orElse(),
  }) {
    if (priceSelected != null) {
      return priceSelected(this);
    }
    return orElse();
  }
}

abstract class _PriceSelected implements ItemEvent {
  const factory _PriceSelected(final PriceModel price) = _$_PriceSelected;

  PriceModel get price => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PriceSelectedCopyWith<_$_PriceSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemState {
  String? get selectedImage => throw _privateConstructorUsedError;
  int? get selectedTabIndex => throw _privateConstructorUsedError;
  PriceModel? get selectedPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStateCopyWith<ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res>;
  $Res call(
      {String? selectedImage,
      int? selectedTabIndex,
      PriceModel? selectedPrice});

  $PriceModelCopyWith<$Res>? get selectedPrice;
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res> implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  final ItemState _value;
  // ignore: unused_field
  final $Res Function(ItemState) _then;

  @override
  $Res call({
    Object? selectedImage = freezed,
    Object? selectedTabIndex = freezed,
    Object? selectedPrice = freezed,
  }) {
    return _then(_value.copyWith(
      selectedImage: selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTabIndex: selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedPrice: selectedPrice == freezed
          ? _value.selectedPrice
          : selectedPrice // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
    ));
  }

  @override
  $PriceModelCopyWith<$Res>? get selectedPrice {
    if (_value.selectedPrice == null) {
      return null;
    }

    return $PriceModelCopyWith<$Res>(_value.selectedPrice!, (value) {
      return _then(_value.copyWith(selectedPrice: value));
    });
  }
}

/// @nodoc
abstract class _$$_ItemStateCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory _$$_ItemStateCopyWith(
          _$_ItemState value, $Res Function(_$_ItemState) then) =
      __$$_ItemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? selectedImage,
      int? selectedTabIndex,
      PriceModel? selectedPrice});

  @override
  $PriceModelCopyWith<$Res>? get selectedPrice;
}

/// @nodoc
class __$$_ItemStateCopyWithImpl<$Res> extends _$ItemStateCopyWithImpl<$Res>
    implements _$$_ItemStateCopyWith<$Res> {
  __$$_ItemStateCopyWithImpl(
      _$_ItemState _value, $Res Function(_$_ItemState) _then)
      : super(_value, (v) => _then(v as _$_ItemState));

  @override
  _$_ItemState get _value => super._value as _$_ItemState;

  @override
  $Res call({
    Object? selectedImage = freezed,
    Object? selectedTabIndex = freezed,
    Object? selectedPrice = freezed,
  }) {
    return _then(_$_ItemState(
      selectedImage == freezed
          ? _value.selectedImage
          : selectedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedPrice == freezed
          ? _value.selectedPrice
          : selectedPrice // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
    ));
  }
}

/// @nodoc

class _$_ItemState implements _ItemState {
  const _$_ItemState(
      this.selectedImage, this.selectedTabIndex, this.selectedPrice);

  @override
  final String? selectedImage;
  @override
  final int? selectedTabIndex;
  @override
  final PriceModel? selectedPrice;

  @override
  String toString() {
    return 'ItemState(selectedImage: $selectedImage, selectedTabIndex: $selectedTabIndex, selectedPrice: $selectedPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemState &&
            const DeepCollectionEquality()
                .equals(other.selectedImage, selectedImage) &&
            const DeepCollectionEquality()
                .equals(other.selectedTabIndex, selectedTabIndex) &&
            const DeepCollectionEquality()
                .equals(other.selectedPrice, selectedPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedImage),
      const DeepCollectionEquality().hash(selectedTabIndex),
      const DeepCollectionEquality().hash(selectedPrice));

  @JsonKey(ignore: true)
  @override
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      __$$_ItemStateCopyWithImpl<_$_ItemState>(this, _$identity);
}

abstract class _ItemState implements ItemState {
  const factory _ItemState(
      final String? selectedImage,
      final int? selectedTabIndex,
      final PriceModel? selectedPrice) = _$_ItemState;

  @override
  String? get selectedImage => throw _privateConstructorUsedError;
  @override
  int? get selectedTabIndex => throw _privateConstructorUsedError;
  @override
  PriceModel? get selectedPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
