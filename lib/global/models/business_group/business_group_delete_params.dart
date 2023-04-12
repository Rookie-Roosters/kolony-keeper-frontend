import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_group_delete_params.freezed.dart';
part 'business_group_delete_params.g.dart';

@freezed
class BusinessGroupDeleteParams with _$BusinessGroupDeleteParams {

  factory BusinessGroupDeleteParams({
    required String id,
  }) = _BusinessGroupDeleteParams;

  factory BusinessGroupDeleteParams.fromJson(Map<String, dynamic> json) => _$BusinessGroupDeleteParamsFromJson(json);
}