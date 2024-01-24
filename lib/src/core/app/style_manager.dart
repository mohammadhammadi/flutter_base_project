import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  color, {
  FontStyle fontStyle = FontStyle.normal,
}) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontStyle: fontStyle);
}

// regular style
TextStyle getRegularStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// medium style

TextStyle getMediumStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getRegularItalicStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color,fontStyle: FontStyle.italic);
}

// light style
TextStyle getLightStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

// bold style
TextStyle getBoldStyle({double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

// semiBold style
TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
