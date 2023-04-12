import 'package:freezed_annotation/freezed_annotation.dart';

part 'interest_group_get_by_id_params.freezed.dart';
part 'interest_group_get_by_id_params.g.dart';

@freezed
class InterestGroupGetByIdParams with _$InterestGroupGetByIdParams {

  factory InterestGroupGetByIdParams({
    required String id, 
  }) = _InterestGroupGetByIdParams;

  factory InterestGroupGetByIdParams.fromJson(Map<String, dynamic> json) => _$InterestGroupGetByIdParamsFromJson(json);
}