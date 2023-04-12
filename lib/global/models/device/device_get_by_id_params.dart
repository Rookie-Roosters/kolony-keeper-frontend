import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_get_by_id_params.freezed.dart';
part 'device_get_by_id_params.g.dart';

@freezed
class DeviceGetByIdParams with _$DeviceGetByIdParams {

  factory DeviceGetByIdParams({
    required String id, 
  }) = _DeviceGetByIdParams;

  factory DeviceGetByIdParams.fromJson(Map<String, dynamic> json) => _$DeviceGetByIdParamsFromJson(json);
}