import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_get_by_id_params.freezed.dart';
part 'notification_get_by_id_params.g.dart';

@freezed
class NotificationGetByIdParams with _$NotificationGetByIdParams {

  factory NotificationGetByIdParams({
    required String id, 
  }) = _NotificationGetByIdParams;

  factory NotificationGetByIdParams.fromJson(Map<String, dynamic> json) => _$NotificationGetByIdParamsFromJson(json);
}