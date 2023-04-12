import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_login_params.freezed.dart';
part 'authentication_login_params.g.dart';

@freezed
class AuthenticationLogInParams with _$AuthenticationLogInParams {
  factory AuthenticationLogInParams({
    required String email,
    required String password,
  }) = _AuthenticationLogInParams;

  factory AuthenticationLogInParams.fromJson(Map<String, dynamic> json) => _$AuthenticationLogInParamsFromJson(json);
}
