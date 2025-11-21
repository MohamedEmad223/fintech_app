import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationCubit extends Cubit<Locale> {
  LocalizationCubit() : super(const Locale('en'));

  void toggleLanguage(BuildContext context) {
    if (state.languageCode == 'en') {
      context.setLocale(const Locale('ar'));
      emit(const Locale('ar'));
    } else {
      context.setLocale(const Locale('en'));
      emit(const Locale('en'));
    }
  }

  void setLanguage(Locale locale, BuildContext context) {
    context.setLocale(locale);
    emit(locale);
  }
}
