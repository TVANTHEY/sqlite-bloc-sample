import 'package:countstock/core/localization/string_resource.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LocalDelegate extends LocalizationsDelegate<StringResource> {
  @override
  bool isSupported(Locale locale) {
    return StringResource.languages().contains(locale.languageCode);
  }

  @override
  Future<StringResource> load(Locale locale) {
    return SynchronousFuture<StringResource>(StringResource(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<StringResource> old) =>
      false;
}
