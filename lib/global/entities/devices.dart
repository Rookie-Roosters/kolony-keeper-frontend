import 'package:freezed_annotation/freezed_annotation.dart';

part 'devices.freezed.dart';
part 'devices.g.dart';

@freezed
class Devices with _$Devices {
  const Devices._();
  const factory Devices({
    //required User user;
    required String name, 
    required String token, 
    required Platform platform, 
  }) = _Devices;

  factory Devices.fromJson(Map<String, dynamic> json) => _$DevicesFromJson(json);
}

enum Platform {
  // iOS, android, web, windows, macOS, linux, email, sms
  @JsonValue(0)
  iOs, 
  
  @JsonValue(1)
  android,

  @JsonValue(2)
  web, 

  @JsonValue(3)
  windows, 

  @JsonValue(4)
  macOS,

  @JsonValue(5)
  linux,

  @JsonValue(6)
  email, 

  @JsonValue(7)
  sms
}