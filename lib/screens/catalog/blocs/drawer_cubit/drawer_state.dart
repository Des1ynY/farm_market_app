part of 'drawer_cubit.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState(
    List<List<CategoryModel>> categoriesHistory,
  ) = _DrawerState;
}
