import 'package:dartz/dartz.dart';
import '../../core/config/config.dart';
import '../../core/utils/utils.dart';
import '../entities/entities.dart';
import '../models/models.dart';
abstract class INotificationsRepository{
  AsyncResponse<Notification> notificationCreate(NotificationCreateParams params, String token); 
  AsyncResponse<List<Notification>> notificationGetAll(String token);
  AsyncResponse<Notification> notificationGetById(NotificationGetByIdParams params, String token); 
  AsyncResponse<Notification> notificationUpdate(NotificationUpdateParams params, String id, String token);
  AsyncResponse<bool> notificationDelete(NotificationDeleteParams params, String token);
}


class NotificationsRepository implements INotificationsRepository{
  final _client = HttpClient('${Environment.kolonyKeeperApi}/notifications');

  @override
  AsyncResponse<Notification> notificationCreate(NotificationCreateParams params, String token) async{
    try {
      _client.options.headers["Authorization"] = 'Bearer $token';
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<List<Notification>> notificationGetAll(String token) async{
    try {
      _client.options.headers["Authorization"] = 'Bearer $token';
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Notification> notificationGetById(NotificationGetByIdParams params, String token) async{
    try {
      _client.options.headers["Authorization"] = 'Bearer $token';
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Notification> notificationUpdate(NotificationUpdateParams params, String id, String token) async {
    try {
      _client.options.headers["Authorization"] = 'Bearer $token';
      final res = await _client.post('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> notificationDelete(NotificationDeleteParams params, String token) async {
    try {
      _client.options.headers["Authorization"] = 'Bearer $token';
      final res = await _client.delete('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}