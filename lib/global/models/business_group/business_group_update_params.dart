import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_group_update_params.freezed.dart';
part 'business_group_update_params.g.dart';

@freezed
class BusinessGroupUpdateParams with _$BusinessGroupUpdateParams {

  factory BusinessGroupUpdateParams({
    String? name, 
    List<String>? tags,
  }) = _BusinessGroupUpdateParams;

  factory BusinessGroupUpdateParams.fromJson(Map<String, dynamic> json) => _$BusinessGroupUpdateParamsFromJson(json);
}