import '../../../core/utils/utils.dart';
import '../../entities/entities.dart';
import '../../models/models.dart';
import '../../repositories/repositories.dart';

abstract class IDeviceCreateUseCase {
  AsyncResponse<Devices> call(DeviceCreateParams params);
}

class DeviceCreateUseCase implements IDeviceCreateUseCase {
  final IDevicesRepository _devicesRepository;
  final IAuthenticationRepository _authenticationRepository; 

  DeviceCreateUseCase(this._devicesRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<Devices> call(DeviceCreateParams params) async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _devicesRepository.deviceCreate(params, token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}