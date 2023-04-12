import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_group.freezed.dart';
part 'business_group.g.dart';

@freezed
class BusinessGroup with _$BusinessGroup {

  factory BusinessGroup({
    required String id, 
    required String name, 
    List<String>? tags,
  }) = _BusinessGroup;

  factory BusinessGroup.fromJson(Map<String, dynamic> json) => _$BusinessGroupFromJson(json);
}