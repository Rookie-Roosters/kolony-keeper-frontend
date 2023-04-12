import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_service.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

part 'notification_update_paramas.freezed.dart';
part 'notification_update_paramas.g.dart';

@freezed
class NotificationUpdateParamas with _$NotificationUpdateParamas {

  factory NotificationUpdateParamas({
    // User? user, 
    // Device? device, 
    BusinessService? businessService, 
  }) = _NotificationUpdateParamas;

  factory NotificationUpdateParamas.fromJson(Map<String, dynamic> json) => _$NotificationUpdateParamasFromJson(json);
}