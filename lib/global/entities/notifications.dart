import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/business_service.dart';
import 'package:kolony_keeper/global/entities/devices.dart';

part 'notifications.freezed.dart';
part 'notifications.g.dart';

@freezed
class Notification with _$Notification {

  factory Notification({
    // required User user,
    required Devices device, 
    BusinessService? service, 
    
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}