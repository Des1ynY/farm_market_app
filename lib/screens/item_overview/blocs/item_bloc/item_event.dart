part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.imageSelected(String imageUrl) = _ImageSelected;

  const factory ItemEvent.tabChanged(int tabIndex) = _TabChanged;

  const factory ItemEvent.priceSelected(PriceModel price) = _PriceSelected;
}
