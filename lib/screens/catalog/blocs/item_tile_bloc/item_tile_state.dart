part of 'item_tile_bloc.dart';

@freezed
class ItemTileState with _$ItemTileState {
  const factory ItemTileState.initial() = _Initial;

  const factory ItemTileState.loading() = _Loading;

  const factory ItemTileState.loaded(CategoryModel? itemCategory) = _Loaded;

  const factory ItemTileState.error() = _Error;
}
