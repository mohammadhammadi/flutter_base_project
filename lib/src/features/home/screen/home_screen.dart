import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/font_manager.dart';
import 'package:flutter_base_project/src/core/app/style_manager.dart';
import 'package:flutter_base_project/src/router/app_router.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: getLightStyle(
            color: ColorManager.colorWhite,
            fontSize: FontSize.s20,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: OutlinedButton(
            onPressed: () => context.pushNamed(AppRoute.user.name),
            child: Text(
              'Users Page',
              style: getRegularStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
