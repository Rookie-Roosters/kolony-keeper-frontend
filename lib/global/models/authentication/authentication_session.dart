import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/entities.dart';

part 'authentication_session.freezed.dart';
part 'authentication_session.g.dart';

@freezed
class AuthenticationSession with _$AuthenticationSession {
  factory AuthenticationSession({
    required String token,
    required User user,
  }) = _AuthenticationSession;

  factory AuthenticationSession.fromJson(Map<String, dynamic> json) => _$AuthenticationSessionFromJson(json);
}
