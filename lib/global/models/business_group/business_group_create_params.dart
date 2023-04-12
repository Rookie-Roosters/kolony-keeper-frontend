import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_group_create_params.freezed.dart';
part 'business_group_create_params.g.dart';

@freezed
class BusinessGroupCreateParams with _$BusinessGroupCreateParams {

  factory BusinessGroupCreateParams({
    required String name,
    List<String>? tags,
  }) = _BusinessGroupCreateParams;

  factory BusinessGroupCreateParams.fromJson(Map<String, dynamic> json) => _$BusinessGroupCreateParamsFromJson(json);
}