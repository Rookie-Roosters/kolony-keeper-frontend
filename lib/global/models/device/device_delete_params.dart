import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_delete_params.freezed.dart';
part 'device_delete_params.g.dart';

@freezed
class DeviceDeleteParams with _$DeviceDeleteParams {

  factory DeviceDeleteParams({
    required String id,
  }) = _DeviceDeleteParams;

  factory DeviceDeleteParams.fromJson(Map<String, dynamic> json) => _$DeviceDeleteParamsFromJson(json);
}