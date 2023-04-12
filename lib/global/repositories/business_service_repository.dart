import 'package:dartz/dartz.dart';
import '../../core/utils/utils.dart';
import '../../core/config/config.dart';
import '../entities/entities.dart';
import '../models/models.dart';
abstract class IBusinessServicesRepository{
  AsyncResponse<BusinessService> businessServiceCreate(BusinessServiceCreateParams params);
  AsyncResponse<BusinessService> businessServiceGetAll(); 
  AsyncResponse<bool> businessServiceDelete(BusinessServiceDeleteParams params); 
  AsyncResponse<BusinessService> businessServiceGetById(BusinessServiceGetByIdParams params); 
  AsyncResponse<BusinessService> businessServiceUpdate(BusinessServiceUpdateParamas params, String id);
}

class BusinessServicesRepository implements IBusinessServicesRepository{
  final _client = HttpClient('${Environment.kolonyKeeperApi}/business-services');

  
  @override
  AsyncResponse<BusinessService> businessServiceCreate(BusinessServiceCreateParams params) async{
    try {
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<BusinessService> businessServiceGetAll() async{
    try {
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessService> businessServiceGetById(BusinessServiceGetByIdParams params) async{
    try {
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessService> businessServiceUpdate(BusinessServiceUpdateParamas params, String id) async {
    try {
      final res = await _client.patch('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> businessServiceDelete(BusinessServiceDeleteParams params) async {
    try {
      final res = await _client.delete<bool>('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}