import 'package:flutter/material.dart';

String string(String key) => InitResource.greeting(key);

class InitResource {
  static late StringResource locals;
  static void init(BuildContext context) {
    locals = StringResource.of(context);
  }
  static String greeting(String key) {
    return locals.greeting(key);
  }
}

class StringResource {
  final Locale locale;
  StringResource(this.locale);

  static StringResource of(BuildContext context) {
    return Localizations.of(context, StringResource)!;
  }

  static List<String> languages() {
    return localizedValue.keys.toList();
  }

  String greeting(String key) {
    try {
      if (localizedValue[locale.languageCode]![key] == null) {
        return key;
      }

      return localizedValue[locale.languageCode]![key]!;
    } on Exception {
      return key;
    }
  }

  static const localizedValue = <String, Map<String, String>>{
    'en': {
      "name": "vatey",
    },
    'km': {}
  };
}
