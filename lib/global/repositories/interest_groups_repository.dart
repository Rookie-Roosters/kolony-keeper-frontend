import 'package:dartz/dartz.dart';
import '../../core/config/config.dart';
import '../../core/utils/utils.dart';
import '../entities/interest_groups.dart';
import '../models/models.dart';

abstract class IInterestGroupsRepository{
  AsyncResponse<InterestGroup> interestGroupCreate(InterestGroupCreateParams params, String token); 
  AsyncResponse<List<InterestGroup>> interestGroupGetAll(String token); 
  AsyncResponse<InterestGroup> interestGroupGetById(InterestGroupGetByIdParams params, String token); 
  AsyncResponse<InterestGroup> interestGroupUpdate(InterestGroupUpdateParams params, String id, String token);
  AsyncResponse<bool> interestGroupDelete(InterestGroupDeleteParams params, String token);
}

class InterestGroupsRepository implements IInterestGroupsRepository{

  final _client = HttpClient('${Environment.kolonyKeeperApi}/interest-groups');

  @override
  AsyncResponse<InterestGroup> interestGroupCreate(InterestGroupCreateParams params, String token) async{
    try {
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<List<InterestGroup>> interestGroupGetAll(String token) async{
    try {
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<InterestGroup> interestGroupGetById(InterestGroupGetByIdParams params, String token) async{
    try {
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<InterestGroup> interestGroupUpdate(InterestGroupUpdateParams params, String id, String token) async {
    try {
      final res = await _client.patch('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> interestGroupDelete(InterestGroupDeleteParams params, String token) async {
    try {
      final res = await _client.delete('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}
