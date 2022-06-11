part of 'items_bloc.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  // FIXME: return empty list
  const factory ItemsEvent.started({
    required List<CategoryModel> selectedCategory,
  }) = _Started;

  const factory ItemsEvent.refresh() = _Refresh;
}
