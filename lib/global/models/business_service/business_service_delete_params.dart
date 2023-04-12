import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_service_delete_params.freezed.dart';
part 'business_service_delete_params.g.dart';

@freezed
class BusinessServiceDeleteParams with _$BusinessServiceDeleteParams {

  factory BusinessServiceDeleteParams({
    required String id, 
  }) = _BusinessServiceDeleteParams;

  factory BusinessServiceDeleteParams.fromJson(Map<String, dynamic> json) => _$BusinessServiceDeleteParamsFromJson(json);
}