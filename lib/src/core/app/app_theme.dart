import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/style_manager.dart';
import 'package:flutter_base_project/src/core/app/values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: ColorManager.colorPrimaryLight,
      secondary: ColorManager.colorPrimaryDark,
    ),
    cardColor: ColorManager.colorCardLight,
    scaffoldBackgroundColor: ColorManager.colorBackgroundLight,
    disabledColor: ColorManager.colorGrey1,
    splashColor: ColorManager.colorSplash,

    // Text color
    primaryColorLight: ColorManager.colorPrimaryLight,
    primaryColorDark: ColorManager.colorPrimaryDark,
    hintColor: ColorManager.colorPlaceHolderLight,
    shadowColor: ColorManager.colorBackgroundDark,
    fontFamily: FontConstants.fontRaleway,

    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColorManager.colorPrimaryLight,
      elevation: 0,
      iconTheme: IconThemeData(
        color: ColorManager.colorWhite,
        size: AppSize.s20,
      ),
      titleTextStyle: getMediumStyle(
        fontSize: FontSize.s18,
        color: ColorManager.colorFontPrimaryLight,
      ),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ColorManager.colorTextFieldLight,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16, vertical: AppPadding.p20),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.colorPlaceHolderLight),
        labelStyle: getMediumStyle(color: ColorManager.colorFontPrimaryLight),
        errorStyle: getRegularStyle(color: ColorManager.colorError),

        // enabled border style
        enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.transparent, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s10))),

        // focused border style
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.colorPrimaryLight, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10))),

        // error border style
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.colorError, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10))),
        // focused border style
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: ColorManager.colorPrimaryLight, width: AppSize.s1_5),
            borderRadius:
                const BorderRadius.all(Radius.circular(AppSize.s10)))),
  );
}
