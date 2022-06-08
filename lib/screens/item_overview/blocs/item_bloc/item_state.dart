part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState(
    String? selectedImage,
    int? selectedTabIndex,
    PriceModel? selectedPrice,
  ) = _ItemState;
}
