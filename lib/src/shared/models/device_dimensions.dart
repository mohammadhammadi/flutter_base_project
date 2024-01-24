import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/device_type_enum.dart';

part 'device_dimensions.freezed.dart';

@freezed
class DeviceDimensions with _$DeviceDimensions {
  const factory DeviceDimensions({
    required Orientation orientation,
    required DeviceTypeEnum deviceType,
    required double screenWidth,
    required double screenHeight,
    required double localWidth,
    required double localHeight,
  }) = _DeviceDimensions;
}
