import '../../../../core/utils/utils.dart';
import '../../../../global/entities/business_group.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';

abstract class IBusinessGroupGetByIdUseCase {
  AsyncResponse<BusinessGroup> call(BusinessGroupGetByIdParams params);
}

class BusinessGroupGetByIdUseCase implements IBusinessGroupGetByIdUseCase {
  final IBusinessGroupsRepository _businessGroupRepository;
  final IAuthenticationRepository _authenticationRepository; 

  BusinessGroupGetByIdUseCase(this._businessGroupRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<BusinessGroup> call(BusinessGroupGetByIdParams params) async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _businessGroupRepository.businessGroupGetById(params, token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}