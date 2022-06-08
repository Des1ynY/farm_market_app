part of 'items_bloc.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.started({
    CategoryModel? selectedCategory,
  }) = _Started;

  const factory ItemsEvent.refresh() = _Refresh;
}
