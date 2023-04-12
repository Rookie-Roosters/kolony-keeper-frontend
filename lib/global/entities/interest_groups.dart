import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_service.dart';

part 'interest_groups.freezed.dart';
part 'interest_groups.g.dart';

@freezed
class InterestGroup with _$InterestGroup {

  factory InterestGroup({
    //required User user,  
    required String name,
    String? icon, 
    required List<BusinessService> businessServices, 

  }) = _InterestGroup;

  factory InterestGroup.fromJson(Map<String, dynamic> json) => _$InterestGroupFromJson(json);
}