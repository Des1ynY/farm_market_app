import 'package:bloc/bloc.dart';
import 'package:farm_market_app/shared/models/price_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_event.dart';
part 'item_state.dart';
part 'item_bloc.freezed.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc({
    required String? imageUrl,
    required int? tabIndex,
    required PriceModel? selectedPrice,
  }) : super(ItemState(imageUrl, tabIndex, selectedPrice)) {
    on<_ImageSelected>(_imageSelected);
    on<_TabChanged>(_tabChanged);
    on<_PriceSelected>(_priceSelected);
  }

  void _imageSelected(_ImageSelected event, Emitter<ItemState> emit) {
    emit(state.copyWith(selectedImage: event.imageUrl));
  }

  void _tabChanged(_TabChanged event, Emitter<ItemState> emit) {
    if (event.tabIndex < 0) {
      addError(Exception('Given index is out of tab controller range'),
          StackTrace.current);
    } else {
      emit(state.copyWith(selectedTabIndex: event.tabIndex));
    }
  }

  void _priceSelected(_PriceSelected event, Emitter<ItemState> emit) {
    emit(state.copyWith(selectedPrice: event.price));
  }
}
