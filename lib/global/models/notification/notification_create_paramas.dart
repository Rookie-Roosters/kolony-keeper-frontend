import 'package:freezed_annotation/freezed_annotation.dart';
import '../../entities/business_service.dart';
import '../../entities/devices.dart';

part 'notification_create_paramas.freezed.dart';
part 'notification_create_paramas.g.dart';

@freezed
class NotificationCreateParams with _$NotificationCreateParams {

  factory NotificationCreateParams({
    // required User user,
    required Devices device, 
    BusinessService? service, 
  }) = _NotificationCreateParams;

  factory NotificationCreateParams.fromJson(Map<String, dynamic> json) => _$NotificationCreateParamsFromJson(json);
}