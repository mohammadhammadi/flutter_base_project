import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/values_manager.dart';

import '../../core/app/app_strings.dart';
import '../../core/app/color_manager.dart';
import '../../core/app/font_manager.dart';
import '../../core/app/style_manager.dart';
import 'device_dimensions_widget.dart';

class CustomErrorWidget extends StatefulWidget {
  const CustomErrorWidget({
    super.key,
    required this.title,
    required this.description,
    this.onPressed,
    this.icon,
    this.isLoading = false,
  });

  final String title;
  final String description;
  final Future Function()? onPressed;
  final Widget? icon;
  final bool isLoading;

  @override
  State<CustomErrorWidget> createState() => _CustomErrorWidgetState();
}

class _CustomErrorWidgetState extends State<CustomErrorWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DeviceDimensionsWidget(builder: (context, deviceDimensions) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.icon != null) Center(child: widget.icon!),
            if (widget.icon != null) const SizedBox(height: 30),
            Text(
              widget.title,
              style: getBoldStyle(
                color: Theme.of(context).primaryColor,
                fontSize: FontSize.s20,
              ),
            ),
            Text(
              widget.description,
              style: getRegularStyle(
                color: Theme.of(context).primaryColor,
                fontSize: FontSize.s15,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSize.s30),
            if (widget.onPressed != null)
              OutlinedButton(
                onPressed: () async {
                  await widget.onPressed!();
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(
                    deviceDimensions.localWidth * 0.5,
                    45,
                  ),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: widget.isLoading
                    ? SizedBox(
                        width: AppSize.s20,
                        height: AppSize.s20,
                        child: Center(
                          child: SizedBox(
                            width: AppSize.s24,
                            height: AppSize.s24,
                            child: CircularProgressIndicator(
                              strokeWidth: 1,
                              color: ColorManager.colorWhite,
                            ),
                          ),
                        ),
                      )
                    : Text(
                        AppStrings.tryAgain,
                        style: getLightStyle(
                          color: ColorManager.colorWhite,
                          fontSize: FontSize.s18,
                        ),
                      ),
              ),
          ],
        );
      }),
    );
  }
}
