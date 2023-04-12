import '../../../../core/utils/utils.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';
import '../../entities/entities.dart';

abstract class IBusinessServiceGetAllUseCase {
  AsyncResponse<List<BusinessService>> call();
}

class BusinessServiceGetAllUseCase implements IBusinessServiceGetAllUseCase{
  final IBusinessServicesRepository _businessServiceRepository;
  final IAuthenticationRepository _authenticationRepository; 

  BusinessServiceGetAllUseCase(this._businessServiceRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<List<BusinessService>> call() async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _businessServiceRepository.businessServiceGetAll(token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}