import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_group_get_by_id_params.freezed.dart';
part 'business_group_get_by_id_params.g.dart';

@freezed
class BusinessGroupGetByIdParams with _$BusinessGroupGetByIdParams {

  factory BusinessGroupGetByIdParams({
    required String id,
  }) = _BusinessGroupGetByIdParams;

  factory BusinessGroupGetByIdParams.fromJson(Map<String, dynamic> json) => _$BusinessGroupGetByIdParamsFromJson(json);
}