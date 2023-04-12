import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_service.dart';

part 'interest_group_create_params.freezed.dart';
part 'interest_group_create_params.g.dart';

@freezed
class InterestGroupCreateParams with _$InterestGroupCreateParams {

  factory InterestGroupCreateParams({
    String? name, 
    String? icon, 
    List<BusinessService>? businessService,
  }) = _InterestGroupCreateParams;

  factory InterestGroupCreateParams.fromJson(Map<String, dynamic> json) => _$InterestGroupCreateParamsFromJson(json);
}