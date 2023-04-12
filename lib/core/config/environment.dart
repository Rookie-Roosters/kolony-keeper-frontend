import 'package:envied/envied.dart';

part 'environment.g.dart';

@Envied(path: '.env')
abstract class Environment {
  @EnviedField(varName: 'KOLONY_KEEPER_API_URL')
  static const kolonyKeeperApi = _Environment.kolonyKeeperApi;
}
