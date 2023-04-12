import '../../../core/utils/utils.dart';
import '../../models/models.dart';
import '../../repositories/repositories.dart';

abstract class INotificationDeleteUseCase {
  AsyncResponse<bool> call(NotificationDeleteParams params);
}

class NotificationDeleteUseCase implements INotificationDeleteUseCase {
  final INotificationsRepository _notificationsRepository;
  final IAuthenticationRepository _authenticationRepository; 

  NotificationDeleteUseCase(this._notificationsRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<bool> call(NotificationDeleteParams params) async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _notificationsRepository.notificationDelete(params, token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}
