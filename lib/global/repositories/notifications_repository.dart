import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kolony_keeper/core/utils/failures.dart';
import 'package:kolony_keeper/core/utils/response.dart';
import 'package:kolony_keeper/global/entities/entities.dart';
import 'package:kolony_keeper/global/models/models.dart';
abstract class INotificationsRepository{
  AsyncResponse<Notification> notificationCreate(NotificationCreateParams params); 
  AsyncResponse<Notification> notificationGetById(NotificationGetByIdParams params); 
  AsyncResponse<Notification> notificationUpdate(NotificationUpdateParams params);
  AsyncResponse<bool> notificationDelete(NotificationDeleteParams params);
}


class NotificationsRepository implements INotificationsRepository{
  @override
  AsyncResponse<Notification> notificationCreate(NotificationCreateParams params) async{
    try {
      final dio = Dio();
      final res = await dio.post<Notification>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<Notification> notificationGetById(NotificationGetByIdParams params) async{
    try {
      final dio = Dio();
      final res = await dio.get<Notification>('jujuju/jajajja/Notifications');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Notification> notificationUpdate(NotificationUpdateParams params) async {
    try {
      final dio = Dio();
      final res = await dio.patch<Notification>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> notificationDelete(NotificationDeleteParams params) async {
    try {
      final dio = Dio();
      final res = await dio.delete<bool>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}