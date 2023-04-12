import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_group.dart';

part 'business_service.freezed.dart';
part 'business_service.g.dart';

@freezed
class BusinessService with _$BusinessService {

  factory BusinessService({
    required String id, 
    required String name, 
    required BusinessStatus status, 
    required BusinessGroup group, 
  }) = _BusinessService;

  factory BusinessService.fromJson(Map<String, dynamic> json) => _$BusinessServiceFromJson(json);
}

enum BusinessStatus {
  @JsonValue(0)
  available,
  @JsonValue(1)
  disruption,
  @JsonValue(2)
  outage,
}