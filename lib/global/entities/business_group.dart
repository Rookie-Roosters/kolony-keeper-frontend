import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'business_group.freezed.dart';
part 'business_group.g.dart';

@freezed
class BusinessGroup with _$BusinessGroup {
  factory BusinessGroup({
    required String id,
    required String name,
    List<String>? tags,
    List<BusinessService>? businessServices,
  }) = _BusinessGroup;

  factory BusinessGroup.fromJson(Map<String, dynamic> json) => _$BusinessGroupFromJson(json);
}
