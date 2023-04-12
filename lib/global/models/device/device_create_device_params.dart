import 'package:freezed_annotation/freezed_annotation.dart';
import '../../entities/entities.dart';

part 'device_create_device_params.freezed.dart';
part 'device_create_device_params.g.dart';

@freezed
class DeviceCreateParams with _$DeviceCreateParams {

  factory DeviceCreateParams({
    required String user, 
    required String name, 
    required String token, 
    Platform? platform, 
  }) = _DeviceCreateParams;

  factory DeviceCreateParams.fromJson(Map<String, dynamic> json) => _$DeviceCreateParamsFromJson(json);
}