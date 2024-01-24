// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_dimensions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceDimensions {
  Orientation get orientation => throw _privateConstructorUsedError;
  DeviceTypeEnum get deviceType => throw _privateConstructorUsedError;
  double get screenWidth => throw _privateConstructorUsedError;
  double get screenHeight => throw _privateConstructorUsedError;
  double get localWidth => throw _privateConstructorUsedError;
  double get localHeight => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceDimensionsCopyWith<DeviceDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDimensionsCopyWith<$Res> {
  factory $DeviceDimensionsCopyWith(
          DeviceDimensions value, $Res Function(DeviceDimensions) then) =
      _$DeviceDimensionsCopyWithImpl<$Res, DeviceDimensions>;
  @useResult
  $Res call(
      {Orientation orientation,
      DeviceTypeEnum deviceType,
      double screenWidth,
      double screenHeight,
      double localWidth,
      double localHeight});
}

/// @nodoc
class _$DeviceDimensionsCopyWithImpl<$Res, $Val extends DeviceDimensions>
    implements $DeviceDimensionsCopyWith<$Res> {
  _$DeviceDimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orientation = null,
    Object? deviceType = null,
    Object? screenWidth = null,
    Object? screenHeight = null,
    Object? localWidth = null,
    Object? localHeight = null,
  }) {
    return _then(_value.copyWith(
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceTypeEnum,
      screenWidth: null == screenWidth
          ? _value.screenWidth
          : screenWidth // ignore: cast_nullable_to_non_nullable
              as double,
      screenHeight: null == screenHeight
          ? _value.screenHeight
          : screenHeight // ignore: cast_nullable_to_non_nullable
              as double,
      localWidth: null == localWidth
          ? _value.localWidth
          : localWidth // ignore: cast_nullable_to_non_nullable
              as double,
      localHeight: null == localHeight
          ? _value.localHeight
          : localHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDimensionsImplCopyWith<$Res>
    implements $DeviceDimensionsCopyWith<$Res> {
  factory _$$DeviceDimensionsImplCopyWith(_$DeviceDimensionsImpl value,
          $Res Function(_$DeviceDimensionsImpl) then) =
      __$$DeviceDimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Orientation orientation,
      DeviceTypeEnum deviceType,
      double screenWidth,
      double screenHeight,
      double localWidth,
      double localHeight});
}

/// @nodoc
class __$$DeviceDimensionsImplCopyWithImpl<$Res>
    extends _$DeviceDimensionsCopyWithImpl<$Res, _$DeviceDimensionsImpl>
    implements _$$DeviceDimensionsImplCopyWith<$Res> {
  __$$DeviceDimensionsImplCopyWithImpl(_$DeviceDimensionsImpl _value,
      $Res Function(_$DeviceDimensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orientation = null,
    Object? deviceType = null,
    Object? screenWidth = null,
    Object? screenHeight = null,
    Object? localWidth = null,
    Object? localHeight = null,
  }) {
    return _then(_$DeviceDimensionsImpl(
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as DeviceTypeEnum,
      screenWidth: null == screenWidth
          ? _value.screenWidth
          : screenWidth // ignore: cast_nullable_to_non_nullable
              as double,
      screenHeight: null == screenHeight
          ? _value.screenHeight
          : screenHeight // ignore: cast_nullable_to_non_nullable
              as double,
      localWidth: null == localWidth
          ? _value.localWidth
          : localWidth // ignore: cast_nullable_to_non_nullable
              as double,
      localHeight: null == localHeight
          ? _value.localHeight
          : localHeight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DeviceDimensionsImpl implements _DeviceDimensions {
  const _$DeviceDimensionsImpl(
      {required this.orientation,
      required this.deviceType,
      required this.screenWidth,
      required this.screenHeight,
      required this.localWidth,
      required this.localHeight});

  @override
  final Orientation orientation;
  @override
  final DeviceTypeEnum deviceType;
  @override
  final double screenWidth;
  @override
  final double screenHeight;
  @override
  final double localWidth;
  @override
  final double localHeight;

  @override
  String toString() {
    return 'DeviceDimensions(orientation: $orientation, deviceType: $deviceType, screenWidth: $screenWidth, screenHeight: $screenHeight, localWidth: $localWidth, localHeight: $localHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDimensionsImpl &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.screenWidth, screenWidth) ||
                other.screenWidth == screenWidth) &&
            (identical(other.screenHeight, screenHeight) ||
                other.screenHeight == screenHeight) &&
            (identical(other.localWidth, localWidth) ||
                other.localWidth == localWidth) &&
            (identical(other.localHeight, localHeight) ||
                other.localHeight == localHeight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orientation, deviceType,
      screenWidth, screenHeight, localWidth, localHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDimensionsImplCopyWith<_$DeviceDimensionsImpl> get copyWith =>
      __$$DeviceDimensionsImplCopyWithImpl<_$DeviceDimensionsImpl>(
          this, _$identity);
}

abstract class _DeviceDimensions implements DeviceDimensions {
  const factory _DeviceDimensions(
      {required final Orientation orientation,
      required final DeviceTypeEnum deviceType,
      required final double screenWidth,
      required final double screenHeight,
      required final double localWidth,
      required final double localHeight}) = _$DeviceDimensionsImpl;

  @override
  Orientation get orientation;
  @override
  DeviceTypeEnum get deviceType;
  @override
  double get screenWidth;
  @override
  double get screenHeight;
  @override
  double get localWidth;
  @override
  double get localHeight;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDimensionsImplCopyWith<_$DeviceDimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
