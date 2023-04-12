import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_service.dart';

part 'interest_group_update_params.freezed.dart';
part 'interest_group_update_params.g.dart';

@freezed
class InterestGroupUpdateParams with _$InterestGroupUpdateParams {

  factory InterestGroupUpdateParams({
    String? name, 
    String? icon, 
    List<BusinessService>? businessService, 
  }) = _InterestGroupUpdateParams;

  factory InterestGroupUpdateParams.fromJson(Map<String, dynamic> json) => _$InterestGroupUpdateParamsFromJson(json);
}