import 'package:dartz/dartz.dart';
import '../../core/utils/utils.dart';
import '../models/models.dart';
import '../../core/config/config.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

abstract class IDevicesRepository {
  AsyncResponse<Device> deviceCreate(DeviceCreateParams params); 
  AsyncResponse<List<Device>> deviceGetAll(); 
  AsyncResponse<Device> deviceGetById(DeviceGetByIdParams params); 
  AsyncResponse<Device> deviceUpdate(DeviceUpdateParams params, String id); 
  AsyncResponse<bool> deviceDelete(DeviceDeleteParams params);
}

class DevicesRepository implements IDevicesRepository{
  final _client = HttpClient('${Environment.kolonyKeeperApi}/devices');
  @override
  AsyncResponse<Device> deviceCreate(DeviceCreateParams params) async{
    try {
      final res = await _client.post('', data: params.toJson()); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override 
  AsyncResponse<List<Device>> deviceGetAll() async{ 
    try {
      final res = await _client.get(''); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Device> deviceGetById(DeviceGetByIdParams params) async{
    try {
      final res = await _client.get('/${params.id}'); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Device> deviceUpdate(DeviceUpdateParams params, String id) async {
    try {
    final res = await _client.patch('/$id', data: params.toJson()); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> deviceDelete(DeviceDeleteParams params) async {
    try {
      final res = await _client.patch('/${params.id}', data: params.toJson()); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}