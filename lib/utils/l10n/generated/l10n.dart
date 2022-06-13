// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Добро пожаловать`
  String get onboarding_heading_text {
    return Intl.message(
      'Добро пожаловать',
      name: 'onboarding_heading_text',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Proin et`
  String get onboarding_text {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Proin et',
      name: 'onboarding_text',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Proin et`
  String get select_city_text {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Proin et',
      name: 'select_city_text',
      desc: '',
      args: [],
    );
  }

  /// `Каталог товаров`
  String get catalog_appbar_title {
    return Intl.message(
      'Каталог товаров',
      name: 'catalog_appbar_title',
      desc: '',
      args: [],
    );
  }

  /// `Категории`
  String get categories_title {
    return Intl.message(
      'Категории',
      name: 'categories_title',
      desc: '',
      args: [],
    );
  }

  /// `Без названия`
  String get no_name {
    return Intl.message(
      'Без названия',
      name: 'no_name',
      desc: '',
      args: [],
    );
  }

  /// `Без категории`
  String get no_category {
    return Intl.message(
      'Без категории',
      name: 'no_category',
      desc: '',
      args: [],
    );
  }

  /// `Всего`
  String get items_count {
    return Intl.message(
      'Всего',
      name: 'items_count',
      desc: '',
      args: [],
    );
  }

  /// `В данной категории пока нет товаров`
  String get no_items_available {
    return Intl.message(
      'В данной категории пока нет товаров',
      name: 'no_items_available',
      desc: '',
      args: [],
    );
  }

  /// `Нет картинки`
  String get no_image_available {
    return Intl.message(
      'Нет картинки',
      name: 'no_image_available',
      desc: '',
      args: [],
    );
  }

  /// `Подробнее`
  String get item_tile_more {
    return Intl.message(
      'Подробнее',
      name: 'item_tile_more',
      desc: '',
      args: [],
    );
  }

  /// `Состав`
  String get item_composition {
    return Intl.message(
      'Состав',
      name: 'item_composition',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get item_description {
    return Intl.message(
      'Описание',
      name: 'item_description',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать фасовку`
  String get item_select_price {
    return Intl.message(
      'Выбрать фасовку',
      name: 'item_select_price',
      desc: '',
      args: [],
    );
  }

  /// `Нет в продаже`
  String get item_no_sale {
    return Intl.message(
      'Нет в продаже',
      name: 'item_no_sale',
      desc: '',
      args: [],
    );
  }

  /// `В корзине нет товаров`
  String get cart_no_items {
    return Intl.message(
      'В корзине нет товаров',
      name: 'cart_no_items',
      desc: '',
      args: [],
    );
  }

  /// `Корзина`
  String get cart_appbar_title {
    return Intl.message(
      'Корзина',
      name: 'cart_appbar_title',
      desc: '',
      args: [],
    );
  }

  /// `Сумма`
  String get summ_price {
    return Intl.message(
      'Сумма',
      name: 'summ_price',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость доставки`
  String get delivery_price {
    return Intl.message(
      'Стоимость доставки',
      name: 'delivery_price',
      desc: '',
      args: [],
    );
  }

  /// `Итого`
  String get overall_price {
    return Intl.message(
      'Итого',
      name: 'overall_price',
      desc: '',
      args: [],
    );
  }

  /// `Заказ успешно оформлен`
  String get order_finish_text {
    return Intl.message(
      'Заказ успешно оформлен',
      name: 'order_finish_text',
      desc: '',
      args: [],
    );
  }

  /// `Как вы хотите получить заказ?`
  String get select_delivery_type {
    return Intl.message(
      'Как вы хотите получить заказ?',
      name: 'select_delivery_type',
      desc: '',
      args: [],
    );
  }

  /// `Доставка`
  String get delivery {
    return Intl.message(
      'Доставка',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Самовывоз`
  String get pickup {
    return Intl.message(
      'Самовывоз',
      name: 'pickup',
      desc: '',
      args: [],
    );
  }

  /// `Укажите адрес доставки`
  String get enter_address {
    return Intl.message(
      'Укажите адрес доставки',
      name: 'enter_address',
      desc: '',
      args: [],
    );
  }

  /// `Укажите контактный номер`
  String get enter_phone {
    return Intl.message(
      'Укажите контактный номер',
      name: 'enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `Комментарий`
  String get enter_comment {
    return Intl.message(
      'Комментарий',
      name: 'enter_comment',
      desc: '',
      args: [],
    );
  }

  /// `Обновить`
  String get refresh_button_text {
    return Intl.message(
      'Обновить',
      name: 'refresh_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get next_button_text {
    return Intl.message(
      'Далее',
      name: 'next_button_text',
      desc: '',
      args: [],
    );
  }

  /// `В корзину`
  String get add_to_cart_button_text {
    return Intl.message(
      'В корзину',
      name: 'add_to_cart_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Оформить заказ`
  String get create_order_button_text {
    return Intl.message(
      'Оформить заказ',
      name: 'create_order_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Заказать`
  String get confirm_order_button_text {
    return Intl.message(
      'Заказать',
      name: 'confirm_order_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Построить маршрут`
  String get create_map_button_text {
    return Intl.message(
      'Построить маршрут',
      name: 'create_map_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Сбросить фильтр`
  String get restore_filters_button_text {
    return Intl.message(
      'Сбросить фильтр',
      name: 'restore_filters_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Заказать`
  String get order_item_button_text {
    return Intl.message(
      'Заказать',
      name: 'order_item_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Произошла непредвиденная ошибка.\nПожалуйста, попробуйте снова`
  String get default_error_text {
    return Intl.message(
      'Произошла непредвиденная ошибка.\nПожалуйста, попробуйте снова',
      name: 'default_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось загрузить картинку`
  String get image_error_text {
    return Intl.message(
      'Не удалось загрузить картинку',
      name: 'image_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось выполнить запрос`
  String get task_error_text {
    return Intl.message(
      'Не удалось выполнить запрос',
      name: 'task_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Не удалось получить информацию о товаре`
  String get item_error_text {
    return Intl.message(
      'Не удалось получить информацию о товаре',
      name: 'item_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Введите данные`
  String get input_error_text {
    return Intl.message(
      'Введите данные',
      name: 'input_error_text',
      desc: '',
      args: [],
    );
  }

  /// `Доступных карт не обнаружено`
  String get no_map_error_text {
    return Intl.message(
      'Доступных карт не обнаружено',
      name: 'no_map_error_text',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
