import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_delete_params.freezed.dart';
part 'notification_delete_params.g.dart';

@freezed
class NotificationDeleteParams with _$NotificationDeleteParams {

  factory NotificationDeleteParams({
    required String id, 
  }) = _NotificationDeleteParams;

  factory NotificationDeleteParams.fromJson(Map<String, dynamic> json) => _$NotificationDeleteParamsFromJson(json);
}