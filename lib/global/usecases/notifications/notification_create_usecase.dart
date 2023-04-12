import '../../../core/utils/utils.dart';
import '../../entities/entities.dart';
import '../../models/models.dart';
import '../../repositories/repositories.dart';

abstract class INotificationCreateUseCase {
  AsyncResponse<Notification> call(NotificationCreateParams params);
}

class NotificationCreatetUseCase implements INotificationCreateUseCase {
  final INotificationsRepository _notificationsRepository;
  final IAuthenticationRepository _authenticationRepository; 

  NotificationCreatetUseCase(this._notificationsRepository, this._authenticationRepository);//, this._authRepository);

  @override
  AsyncResponse<Notification> call(NotificationCreateParams params) async {
    final session = _authenticationRepository.session;
    String token = session!.token;
    if(token != ''){
      return _notificationsRepository.notificationCreate(params, token);
    }else{
      throw const Failure.unauthorized('Not authorized');
    }
  }
}
