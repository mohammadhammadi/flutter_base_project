import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/color_manager.dart';
import 'package:flutter_base_project/src/core/app/font_manager.dart';
import 'package:flutter_base_project/src/core/app/style_manager.dart';
import 'package:flutter_base_project/src/core/app/values_manager.dart';
import 'package:flutter_base_project/src/features/user/data/models/user_model.dart';

import '../../../shared/widgets/device_dimensions_widget.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return DeviceDimensionsWidget(builder: (context, deviceDimensions) {
      return Container(
        color: Theme.of(context).primaryColorDark,
        padding: const EdgeInsets.only(
          left: AppPadding.p14,
          bottom: AppPadding.p20,
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
            ClipRRect(
              borderRadius: BorderRadius.circular(10000.0),
              child: CachedNetworkImage(
                width: deviceDimensions.screenWidth * 0.3,
                height: deviceDimensions.screenWidth * 0.3,
                imageUrl: user.avatar!,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(
                  value: downloadProgress.progress,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            SizedBox(height: AppSize.s10,),
            ListTile(
              leading: Icon(
                Icons.person,
                color: ColorManager.colorWhite,
                size: AppSize.s30,
              ),
              title: Text(
                '${user.firstName} ${user.lastName}',
                style: getLightStyle(
                  color: ColorManager.colorWhite,
                  fontSize: FontSize.s18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: ColorManager.colorWhite,
                size: AppSize.s30,
              ),
              title: Text(
                user.email!,
                style: getLightStyle(
                  color: ColorManager.colorWhite,
                  fontSize: FontSize.s18,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
