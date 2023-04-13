import 'package:dartz/dartz.dart';
import '../../core/config/config.dart';
import '../../core/utils/utils.dart';
import '../entities/entities.dart';
import '../models/models.dart';

abstract class IBusinessGroupsRepository {
  AsyncResponse<BusinessGroup> businessGroupCreate(BusinessGroupCreateParams params, String token);
  AsyncResponse<List<BusinessGroup>> businessGroupGetAll(String token);
  AsyncResponse<bool> businessGroupDelete(BusinessGroupDeleteParams params, String token);
  AsyncResponse<BusinessGroup> businessGroupGetById(BusinessGroupGetByIdParams params, String token);
  AsyncResponse<BusinessGroup> businessGroupUpdate(BusinessGroupUpdateParams params, String id, String token);
}

class BusinessGroupsRepository implements IBusinessGroupsRepository {
  final _client = HttpClient('${Environment.kolonyKeeperApi}/business-groups');

  @override
  AsyncResponse<BusinessGroup> businessGroupCreate(BusinessGroupCreateParams params, String token) async {
    try {
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<List<BusinessGroup>> businessGroupGetAll(String token) async {
    try {
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessGroup> businessGroupGetById(BusinessGroupGetByIdParams params, String token) async {
    try {
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessGroup> businessGroupUpdate(BusinessGroupUpdateParams params, String id, String token) async {
    try {
      final res = await _client.patch('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> businessGroupDelete(BusinessGroupDeleteParams params, String token) async {
    try {
      final res = await _client.delete('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}
