import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vt_simple_app/data/sharedpref/shared_preference_helper.dart';

final languageProvider = ChangeNotifierProvider<LanguageNotifier>((ref) {
  final langCode = SharedPreferenceHelper.language;
  return LanguageNotifier(langCode);
});

class LanguageNotifier extends ChangeNotifier {
  List<String> supportLang = ['en', 'km'];
  String? langCode;

  LanguageNotifier(String code) {
    langCode = code;
  }

  void onInit() {
    langCode = SharedPreferenceHelper.language;
    notifyListeners();
  }

  Future<void> changeLang(String langCode) async {
    this.langCode = langCode;
    await SharedPreferenceHelper.setLanguage(langCode);
    notifyListeners();
  }
}
