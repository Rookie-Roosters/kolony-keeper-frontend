import 'package:freezed_annotation/freezed_annotation.dart';

part 'interest_group_delete_params.freezed.dart';
part 'interest_group_delete_params.g.dart';

@freezed
class InterestGroupDeleteParams with _$InterestGroupDeleteParams {

  factory InterestGroupDeleteParams({
    required String id,
  }) = _InterestGroupDeleteParams;

  factory InterestGroupDeleteParams.fromJson(Map<String, dynamic> json) => _$InterestGroupDeleteParamsFromJson(json);
}