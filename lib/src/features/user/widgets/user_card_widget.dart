import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/src/core/app/font_manager.dart';
import 'package:flutter_base_project/src/core/app/style_manager.dart';
import 'package:flutter_base_project/src/core/app/values_manager.dart';
import 'package:flutter_base_project/src/shared/widgets/device_dimensions_widget.dart';

import '../../../core/app/color_manager.dart';
import '../data/models/user_model.dart';

class UserCardView extends StatelessWidget {
  const UserCardView({
    super.key,
    required this.user,
  });

  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return DeviceDimensionsWidget(builder: (context, deviceDimensions) {
      return Card(
        elevation: AppSize.s5,
        child: ClipPath(
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s5),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: ColorManager.colorPrimaryLight,
                  width: AppSize.s5,
                ),
              ),
              color: ColorManager.colorWhite,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p10,
              vertical: AppPadding.p6,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10000.0),
                  child: CachedNetworkImage(
                    width: deviceDimensions.screenWidth * 0.2,
                    height: deviceDimensions.screenWidth * 0.2,
                    imageUrl: user.avatar!,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(
                  width: AppSize.s20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${user.firstName} ${user.lastName}',
                      style: getMediumStyle(
                          fontSize: FontSize.s16,
                          color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(
                      height: AppSize.s10,
                    ),
                    Text(
                      user.email ?? '',
                      style: getRegularStyle(
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
/*
    return ListView.builder(
      itemCount: usersList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p2,
            horizontal: AppPadding.p6,
          ),
          child: Card(
            elevation: AppSize.s5,
            child: ClipPath(
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s5),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: ColorManager.colorPrimaryLight,
                      width: AppSize.s5,
                    ),
                  ),
                  color: ColorManager.colorWhite,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p10,
                  vertical: AppPadding.p6,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10000.0),
                      child: CachedNetworkImage(
                        width: screenWidth * 0.2,
                        imageUrl: usersList[index].avatar!,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(
                      width: AppSize.s20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${usersList[index].firstName} ${usersList[index].lastName}',
                          style: getMediumStyle(
                              fontSize: FontSize.s16,
                              color: Theme.of(context).primaryColor),
                        ),
                        const SizedBox(
                          height: AppSize.s10,
                        ),
                        Text(
                          usersList[index].email ?? '',
                          style: getRegularStyle(
                              color: Theme.of(context).primaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );*/
  }
}
