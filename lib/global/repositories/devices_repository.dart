import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kolony_keeper/core/utils/failures.dart';
import 'package:kolony_keeper/core/utils/response.dart';
import 'package:kolony_keeper/global/models/models.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

abstract class IDevicesRepository {
  AsyncResponse<Device> deviceCreate(DeviceCreateParams params); 
  AsyncResponse<Device> deviceGetById(DeviceGetByIdParams params); 
  AsyncResponse<Device> deviceUpdate(DeviceUpdateParams params); 
  AsyncResponse<bool> deviceDelete(DeviceDeleteParams params);
}

class DevicesRepository implements IDevicesRepository{
  
  @override
  AsyncResponse<Device> deviceCreate(DeviceCreateParams params) async{
    try {
      final dio = Dio();
      final res = await dio.post<Device>('jujuju/jajajja/InterestGroup', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<Device> deviceGetById(DeviceGetByIdParams params) async{
    try {
      final dio = Dio();
      final res = await dio.get<Device>('jujuju/jajajja/Notifications');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Device> deviceUpdate(DeviceUpdateParams params) async {
    try {
      final dio = Dio();
      final res = await dio.patch<Device>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> deviceDelete(DeviceDeleteParams params) async {
    try {
      final dio = Dio();
      final res = await dio.delete<bool>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}