import 'package:dartz/dartz.dart';
import '../../core/utils/utils.dart';
import '../entities/entities.dart';
import '../models/models.dart';
import '../../core/config/config.dart';

abstract class IDevicesRepository {
  AsyncResponse<Devices> deviceCreate(DeviceCreateParams params, String token); 
  AsyncResponse<List<Devices>> deviceGetAll(String token); 
  AsyncResponse<Devices> deviceGetById(DeviceGetByIdParams params, String token); 
  AsyncResponse<Devices> deviceUpdate(DeviceUpdateParams params, String id, String token); 
  AsyncResponse<bool> deviceDelete(DeviceDeleteParams params, String token);
}

class DevicesRepository implements IDevicesRepository{
  final _client = HttpClient('${Environment.kolonyKeeperApi}/devices');
  @override
  AsyncResponse<Devices> deviceCreate(DeviceCreateParams params, String token) async{
    try {
      final res = await _client.post('', data: params.toJson()); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override 
  AsyncResponse<List<Devices>> deviceGetAll(String token) async{ 
    try {
      final res = await _client.get(''); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Devices> deviceGetById(DeviceGetByIdParams params, String token) async{
    try {
      final res = await _client.get('/${params.id}'); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Devices> deviceUpdate(DeviceUpdateParams params, String id, String token) async {
    try {
    final res = await _client.patch('/$id', data: params.toJson()); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> deviceDelete(DeviceDeleteParams params, String token) async {
    try {
      final res = await _client.patch('/${params.id}', data: params.toJson()); 
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}