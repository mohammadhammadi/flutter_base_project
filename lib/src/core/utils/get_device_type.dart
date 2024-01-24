import 'package:flutter/material.dart';

import '../../shared/constants/break_points.dart';
import '../../shared/enums/device_type_enum.dart';

DeviceTypeEnum getDeviceType({required MediaQueryData mediaQueryData}) {
  double width = 0;
  if (mediaQueryData.orientation == Orientation.landscape) {
    width = mediaQueryData.size.height;
  } else {
    width = mediaQueryData.size.width;
  }
  switch (width) {
    case >= BreakPoints.tablet:
      return DeviceTypeEnum.tablet;
    case >= BreakPoints.mobile:
      return DeviceTypeEnum.mobile;
    default:
      return DeviceTypeEnum.mobileSmall;
  }
}
