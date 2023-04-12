import 'package:dartz/dartz.dart';
import '../../core/config/config.dart';
import '../../core/utils/utils.dart';
import '../entities/entities.dart';
import '../models/models.dart';
abstract class IBusinessGroupsRepository {
  AsyncResponse<BusinessGroup> businessGroupCreate(BusinessGroupCreateParams params);
  AsyncResponse<List<BusinessGroup>> businessGroupGetAll();
  AsyncResponse<bool> businessGroupDelete(BusinessGroupDeleteParams params); 
  AsyncResponse<BusinessGroup> businessGroupGetById(BusinessGroupGetByIdParams params); 
  AsyncResponse<BusinessGroup> businessGroupUpdate(BusinessGroupUpdateParams params, String id);
}

class BusinessGroupsRepository implements IBusinessGroupsRepository{
  final _client = HttpClient('${Environment.kolonyKeeperApi}/business-groups');
  
  
  @override
  AsyncResponse<BusinessGroup> businessGroupCreate(BusinessGroupCreateParams params) async{
    try {
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 
  @override
  AsyncResponse<List<BusinessGroup>> businessGroupGetAll() async{
    try {
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessGroup> businessGroupGetById(BusinessGroupGetByIdParams params) async{
    try {
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessGroup> businessGroupUpdate(BusinessGroupUpdateParams params, String id) async {
    try {
      final res = await _client.patch('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> businessGroupDelete(BusinessGroupDeleteParams params) async {
    try {
      final res = await _client.delete('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}