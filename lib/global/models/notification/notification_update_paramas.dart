import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_service.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

part 'notification_update_paramas.freezed.dart';
part 'notification_update_paramas.g.dart';

@freezed
class NotificationUpdateParams with _$NotificationUpdateParams {

  factory NotificationUpdateParams({
    // User? user, 
    // Device? device, 
    BusinessService? businessService, 
  }) = _NotificationUpdateParams;

  factory NotificationUpdateParams.fromJson(Map<String, dynamic> json) => _$NotificationUpdateParamsFromJson(json);
}