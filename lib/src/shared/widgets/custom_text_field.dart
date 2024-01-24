import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/font_manager.dart';
import 'package:flutter_base_project/src/core/app/style_manager.dart';

import '../../core/app/color_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.controller,
    this.validate,
    this.textInputAction,
    this.textInputType,
  });

  final Icon icon;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String? value)? validate;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validate!(value),
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: icon,
        prefixIconColor: Theme.of(context).primaryColor,
        hintText: hintText,
        hintStyle: getRegularStyle(
          color: ColorManager.colorGrey2,
          fontSize: FontSize.s15,
        ),
        errorBorder: getOutlineInputBorder(
          color: ColorManager.colorRed,
        ),
        focusedErrorBorder: getOutlineInputBorder(
          color: ColorManager.colorRed,
        ),
        enabledBorder: getOutlineInputBorder(
          color: ColorManager.colorGrey1,
        ),
        focusedBorder: getOutlineInputBorder(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

OutlineInputBorder getOutlineInputBorder({required Color color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: color,
    ),
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(12),
      bottomRight: Radius.circular(12),
    ),
  );
}
