import 'package:flutter/material.dart';

import '../../core/utils/get_device_type.dart';
import '../../shared/models/device_dimensions.dart';

class DeviceDimensionsWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceDimensions deviceDimensions)
      builder;
  const DeviceDimensionsWidget({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return MediaQuery.withNoTextScaling(
      child: LayoutBuilder(builder: (context, constraints) {
        final deviceInfo = DeviceDimensions(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData: mediaQueryData),
          screenHeight: mediaQueryData.size.height,
          screenWidth: mediaQueryData.size.width,
          localWidth: constraints.maxWidth,
          localHeight: constraints.maxHeight,
        );
        return builder(context, deviceInfo);
      }),
    );
  }
}
