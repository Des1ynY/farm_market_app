part of 'item_tile_bloc.dart';

@freezed
class ItemTileEvent with _$ItemTileEvent {
  const factory ItemTileEvent.started(ItemModel item) = _Started;
}
