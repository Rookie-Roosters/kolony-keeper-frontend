import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident_update_params.freezed.dart';
part 'incident_update_params.g.dart';

@freezed
class IncidentUpdateParams with _$IncidentUpdateParams {

  factory IncidentUpdateParams({
    String? description, 
  }) = _IncidentUpdateParams;

  factory IncidentUpdateParams.fromJson(Map<String, dynamic> json) => _$IncidentUpdateParamsFromJson(json);
}