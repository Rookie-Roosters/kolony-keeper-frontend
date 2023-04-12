import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/config/config.dart';
import '../../core/utils/utils.dart';
import '../models/models.dart';

const _kSessionKey = 'session';

abstract class IAuthenticationRepository {
  AuthenticationSession? session;

  AsyncResponse<AuthenticationLogInResponse> logIn(AuthenticationLogInParams params);
  AsyncResponse<void> logOut();
}

class AuthenticationRepository implements IAuthenticationRepository {
  final _storage = const FlutterSecureStorage();
  final _client = HttpClient('${Environment.kolonyKeeperApi}/auth');

  AuthenticationRepository._();

  static Future<AuthenticationRepository> init() async {
    final instance = AuthenticationRepository._();
    await instance._getSession();
    return instance;
  }

  @override
  AuthenticationSession? session;

  @override
  AsyncResponse<AuthenticationLogInResponse> logIn(AuthenticationLogInParams params) async {
    try {
      final req = await _client.post('/log-in', data: params.toJson());
      final res = AuthenticationLogInResponse.fromJson(req.data);
      await _saveSession(AuthenticationSession(token: res.token, user: res.user));
      return Right(res);
    } catch (e) {
      return Left(HttpClient.handler(e));
    }
  }

  @override
  AsyncResponse<void> logOut() async {
    try {
      await _closeSession();
      return const Right(null);
    } catch (e) {
      return Left(HttpClient.handler(e));
    }
  }

  _getSession() async {
    final value = await _storage.read(key: _kSessionKey);
    if (value != null) {
      session = AuthenticationSession.fromJson(jsonDecode(value));
    }
  }

  _closeSession() async {
    await _storage.delete(key: _kSessionKey);
    session = null;
  }

  _saveSession(AuthenticationSession session) async {
    final value = jsonEncode(session.toJson());
    await _storage.write(key: _kSessionKey, value: value);
    this.session = session;
  }
}
