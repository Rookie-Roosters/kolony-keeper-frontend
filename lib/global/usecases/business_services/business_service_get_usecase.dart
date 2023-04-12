import '../../../../core/utils/utils.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';
import '../../entities/entities.dart';

abstract class IBusinessServiceGetByIdUseCase {
  AsyncResponse<BusinessService> call(BusinessServiceGetByIdParams params);
}

class BusinessServiceGetByIdUseCase implements IBusinessServiceGetByIdUseCase {
  final IBusinessServicesRepository _businessServiceRepository;
  final IAuthenticationRepository _authenticationRepository; 

  BusinessServiceGetByIdUseCase(this._businessServiceRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<BusinessService> call(BusinessServiceGetByIdParams params) async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _businessServiceRepository.businessServiceGetById(params, token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}