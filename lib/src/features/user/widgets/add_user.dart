import 'package:flutter/material.dart';

import '../../../core/app/color_manager.dart';
import '../../../core/app/values_manager.dart';
import '../../../shared/widgets/device_dimensions_widget.dart';

class AddUser extends StatelessWidget {
  const AddUser({super.key});

  @override
  Widget build(BuildContext context) {
    return DeviceDimensionsWidget(builder: (context, deviceDimensions) {
      return Container(
        color: Theme.of(context).primaryColorDark,
        padding: const EdgeInsets.only(
          left: AppPadding.p14,
          bottom: AppPadding.p30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close_sharp,
                  color: ColorManager.colorWhite,
                  size: AppSize.s30,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      );
    });
  }
}
