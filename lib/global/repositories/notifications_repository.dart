import 'package:dartz/dartz.dart';
import '../../core/config/config.dart';
import '../../core/utils/utils.dart';
import '../entities/entities.dart';
import '../models/models.dart';
abstract class INotificationsRepository{
  AsyncResponse<Notification> notificationCreate(NotificationCreateParams params); 
  AsyncResponse<List<Notification>> notificationGetAll();
  AsyncResponse<Notification> notificationGetById(NotificationGetByIdParams params); 
  AsyncResponse<Notification> notificationUpdate(NotificationUpdateParams params, String id);
  AsyncResponse<bool> notificationDelete(NotificationDeleteParams params);
}


class NotificationsRepository implements INotificationsRepository{
  final _client = HttpClient('${Environment.kolonyKeeperApi}/notifications');

  @override
  AsyncResponse<Notification> notificationCreate(NotificationCreateParams params) async{
    try {
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<List<Notification>> notificationGetAll() async{
    try {
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Notification> notificationGetById(NotificationGetByIdParams params) async{
    try {
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Notification> notificationUpdate(NotificationUpdateParams params, String id) async {
    try {
      final res = await _client.post('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> notificationDelete(NotificationDeleteParams params) async {
    try {
      final res = await _client.delete('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}