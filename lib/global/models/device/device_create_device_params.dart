import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/entities.dart';

part 'device_create_device_params.freezed.dart';
part 'device_create_device_params.g.dart';

@freezed
class DeviceCreateParams with _$DeviceCreateParams {

  factory DeviceCreateParams({
    // required User user, 
    required String name, 
    required String token, 
    required Platform platform, 
  }) = _DeviceCreateParams;

  factory DeviceCreateParams.fromJson(Map<String, dynamic> json) => _$DeviceCreateParamsFromJson(json);
}