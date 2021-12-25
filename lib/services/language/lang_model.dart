import 'package:flutter/material.dart';

class Language {
  final String? langName;
  final String? langIcon;
  final Locale? langLocale;
  final String? langCode;
  final String? langCountry;

  Language({
    this.langCode,
    this.langCountry,
    this.langIcon,
    this.langLocale,
    this.langName,
  });

  static final appLocales = [
    Locale('en', 'US'),
    Locale('hi', 'IN'),
    Locale('de', 'DE'),
  ];
}
