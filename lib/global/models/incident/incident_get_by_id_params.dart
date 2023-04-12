import 'package:freezed_annotation/freezed_annotation.dart';

part 'incident_get_by_id_params.freezed.dart';
part 'incident_get_by_id_params.g.dart';

@freezed
class IncidentGetByIdParams with _$IncidentGetByIdParams {

  factory IncidentGetByIdParams({
    required String id, 
  }) = _IncidentGetByIdParams;

  factory IncidentGetByIdParams.fromJson(Map<String, dynamic> json) => _$IncidentGetByIdParamsFromJson(json);
}