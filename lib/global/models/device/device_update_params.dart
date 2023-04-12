import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/entities.dart';

part 'device_update_params.freezed.dart';
part 'device_update_params.g.dart';

@freezed
class DeviceUpdateParams with _$DeviceUpdateParams {

  factory DeviceUpdateParams({
    String? name, 
    String? token, 
    Platform? platform, 
  }) = _DeviceUpdateParams;

  factory DeviceUpdateParams.fromJson(Map<String, dynamic> json) => _$DeviceUpdateParamsFromJson(json);
}