import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_service_get_by_id_params.freezed.dart';
part 'business_service_get_by_id_params.g.dart';

@freezed
class BusinessServiceGetByIdParams with _$BusinessServiceGetByIdParams {

  factory BusinessServiceGetByIdParams({
    required String id, 
  }) = _BusinessServiceGetByIdParams;

  factory BusinessServiceGetByIdParams.fromJson(Map<String, dynamic> json) => _$BusinessServiceGetByIdParamsFromJson(json);
}