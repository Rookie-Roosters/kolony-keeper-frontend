import 'package:freezed_annotation/freezed_annotation.dart';

part 'incidents.freezed.dart';
part 'incidents.g.dart';

@freezed
class Incidents with _$Incidents {

  factory Incidents({
    required String id,
    required String description, 
    required IncidentStatus status, 
    required IncidentPriority priority, 

  }) = _Incidents;

  factory Incidents.fromJson(Map<String, dynamic> json) => _$IncidentsFromJson(json);
}

enum IncidentStatus {
  @JsonValue(0)
  resolved, 

  @JsonValue(1)
  inProgress, 

  @JsonValue(2)
  closed, 

  @JsonValue(3)
  open,
}

enum IncidentPriority {
  @JsonValue(0)
  p1, 

  @JsonValue(1)
  p2, 

  @JsonValue(2)
  p3, 

  @JsonValue(3)
  p4
}