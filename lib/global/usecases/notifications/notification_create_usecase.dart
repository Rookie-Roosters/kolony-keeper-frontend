import '../../../core/utils/utils.dart';
import '../../entities/entities.dart';
import '../../models/models.dart';
import '../../repositories/repositories.dart';

abstract class INotificationCreateUseCase {
  AsyncResponse<Notification> call(NotificationCreateParams params);
}

class NotificationCreatetUseCase implements INotificationCreateUseCase {
  final INotificationsRepository _notificationsRepository;
  //final IAuthRepository _authRepository; 

  NotificationCreatetUseCase(this._notificationsRepository);//, this._authRepository);

  @override
  AsyncResponse<Notification> call(NotificationCreateParams params) async {
    //final session = await _authRepository.getSession(); 
    late String token;
    // session.fold(
    //   (l) {
    //     throw const Failure.unauthorized('Not authorized');
    //   },
    //   (r) {
    //     try{
    //       token = r!.token;
    //     } catch(e){
    //       throw Failure.unauthorized(r.toString()); 
    //     }
    //   }
    // );
    return _notificationsRepository.notificationCreate(params);
  }
}
