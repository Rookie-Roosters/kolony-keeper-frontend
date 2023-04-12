import '../../../../core/utils/utils.dart';
import '../../../../global/entities/business_group.dart';
import '../../../../global/models/models.dart';
import '../../../../global/repositories/repositories.dart';

abstract class IBusinessGroupCreateUseCase {
  AsyncResponse<BusinessGroup> call(BusinessGroupCreateParams params);
}

class BusinessGroupCreateUseCase implements IBusinessGroupCreateUseCase {
  final IBusinessGroupsRepository _businessGroupRepository;
  final IAuthenticationRepository _authenticationRepository; 

  BusinessGroupCreateUseCase(this._businessGroupRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<BusinessGroup> call(BusinessGroupCreateParams params) async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _businessGroupRepository.businessGroupCreate(params, token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}