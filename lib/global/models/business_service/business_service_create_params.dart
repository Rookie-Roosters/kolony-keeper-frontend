import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_group.dart';

part 'business_service_create_params.freezed.dart';
part 'business_service_create_params.g.dart';

@freezed
class BusinessServiceCreateParams with _$BusinessServiceCreateParams {

  factory BusinessServiceCreateParams({
    required String name, 
    BusinessGroup? group,
  }) = _BusinessServiceCreateParams;

  factory BusinessServiceCreateParams.fromJson(Map<String, dynamic> json) => _$BusinessServiceCreateParamsFromJson(json);
}