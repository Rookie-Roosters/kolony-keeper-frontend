import 'package:freezed_annotation/freezed_annotation.dart';

part 'interest_group_delete_params.freezed.dart';
part 'interest_group_delete_params.g.dart';

@freezed
class InterestGroupDelteParams with _$InterestGroupDelteParams {

  factory InterestGroupDelteParams({
    required String id,
  }) = _InterestGroupDelteParams;

  factory InterestGroupDelteParams.fromJson(Map<String, dynamic> json) => _$InterestGroupDelteParamsFromJson(json);
}