import '../../../../core/utils/utils.dart';
import '../../../../global/repositories/repositories.dart';
import '../../entities/entities.dart';

abstract class IIncidentsGetAllUseCase {
  AsyncResponse<List<Incidents>> call();
}

class IncidentsGetAllUseCase implements IIncidentsGetAllUseCase{
  final IIncidentsRepository _incidentsRepository;
  final IAuthenticationRepository _authenticationRepository; 

  IncidentsGetAllUseCase(this._incidentsRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<List<Incidents>> call() async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _incidentsRepository.incidentGetAll(token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}