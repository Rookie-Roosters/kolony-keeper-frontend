import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident_delete_params.freezed.dart';
part 'incident_delete_params.g.dart';

@freezed
class IncidentDeleteParams with _$IncidentDeleteParams {

  factory IncidentDeleteParams({
    required String id, 
  }) = _IncidentDeleteParams;

  factory IncidentDeleteParams.fromJson(Map<String, dynamic> json) => _$IncidentDeleteParamsFromJson(json);
}