import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kolony_keeper/global/entities/incidents.dart';

part 'incident_create_params.freezed.dart';
part 'incident_create_params.g.dart';

@freezed
class IncidentCreateParams with _$IncidentCreateParams {

  factory IncidentCreateParams({
    required String description, 
    required IncidentStatus status, 
    required IncidentPriority priority,  

  }) = _IncidentCreateParams;

  factory IncidentCreateParams.fromJson(Map<String, dynamic> json) => _$IncidentCreateParamsFromJson(json);
}