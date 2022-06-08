// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru_RU';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "cart_appbar_title": MessageLookupByLibrary.simpleMessage("Корзина"),
        "catalog_appbar_title":
            MessageLookupByLibrary.simpleMessage("Каталог товаров"),
        "categories_title": MessageLookupByLibrary.simpleMessage("Категории"),
        "category_no_name":
            MessageLookupByLibrary.simpleMessage("Без названия"),
        "default_error_text": MessageLookupByLibrary.simpleMessage(
            "Произошла непредвиденная ошибка.\nПожалуйста, попробуйте снова"),
        "item_no_category":
            MessageLookupByLibrary.simpleMessage("Без категории"),
        "item_tile_more": MessageLookupByLibrary.simpleMessage("Подробнее"),
        "items_count": MessageLookupByLibrary.simpleMessage("Всего"),
        "next_button_text": MessageLookupByLibrary.simpleMessage("Далее"),
        "no_image_available":
            MessageLookupByLibrary.simpleMessage("Нет картинки"),
        "no_items_available": MessageLookupByLibrary.simpleMessage(
            "В данной категории пока нет товаров"),
        "onboarding_heading_text":
            MessageLookupByLibrary.simpleMessage("Добро пожаловать"),
        "onboarding_text": MessageLookupByLibrary.simpleMessage(
            "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Proin et"),
        "refresh_button_text": MessageLookupByLibrary.simpleMessage("Обновить")
      };
}
