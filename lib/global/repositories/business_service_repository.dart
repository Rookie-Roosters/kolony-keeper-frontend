import 'package:dartz/dartz.dart';
import '../../core/utils/utils.dart';
import '../../core/config/config.dart';
import '../entities/entities.dart';
import '../models/models.dart';
abstract class IBusinessServicesRepository{
  AsyncResponse<BusinessService> businessServiceCreate(BusinessServiceCreateParams params, String token);
  AsyncResponse<List<BusinessService>> businessServiceGetAll(String token); 
  AsyncResponse<bool> businessServiceDelete(BusinessServiceDeleteParams params, String token); 
  AsyncResponse<BusinessService> businessServiceGetById(BusinessServiceGetByIdParams params, String token); 
  AsyncResponse<BusinessService> businessServiceUpdate(BusinessServiceUpdateParamas params, String id, String token);
}

class BusinessServicesRepository implements IBusinessServicesRepository{
  final _client = HttpClient('${Environment.kolonyKeeperApi}/business-services');

  
  @override
  AsyncResponse<BusinessService> businessServiceCreate(BusinessServiceCreateParams params, String token) async{
    try {
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<List<BusinessService>> businessServiceGetAll(String token) async{
    try {
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessService> businessServiceGetById(BusinessServiceGetByIdParams params, String token) async{
    try {
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessService> businessServiceUpdate(BusinessServiceUpdateParamas params, String id, String token) async {
    try {
      final res = await _client.patch('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> businessServiceDelete(BusinessServiceDeleteParams params, String token) async {
    try {
      final res = await _client.delete<bool>('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}