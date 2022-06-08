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

  /// `Корзина`
  String get cart_appbar_title {
    return Intl.message(
      'Корзина',
      name: 'cart_appbar_title',
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
