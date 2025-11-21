import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app_light_theme.dart';

import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeData: AppLightTheme.mainThemeData));

  void changeTheme(ThemeData themeData) {
    emit(ThemeState(themeData: themeData));
  }
}
