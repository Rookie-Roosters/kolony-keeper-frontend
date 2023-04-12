import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kolony_keeper/core/utils/failures.dart';
import 'package:kolony_keeper/core/utils/response.dart';
import 'package:kolony_keeper/global/entities/interest_groups.dart';
import 'package:kolony_keeper/global/models/models.dart';

abstract class IInterestGroupsRepository{
  AsyncResponse<InterestGroup> interestGroupCreate(InterestGroupCreateParams params); 
  AsyncResponse<InterestGroup> interestGroupGetById(InterestGroupGetByIdParams params); 
  AsyncResponse<InterestGroup> interestGroupUpdate(InterestGroupUpdateParams params);
  AsyncResponse<bool> interestGroupDelete(InterestGroupDeleteParams params);
}

class InterestGroupsRepository implements IInterestGroupsRepository{

  @override
  AsyncResponse<InterestGroup> interestGroupCreate(InterestGroupCreateParams params) async{
    try {
      final dio = Dio();
      final res = await dio.post<InterestGroup>('jujuju/jajajja/InterestGroup', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<InterestGroup> interestGroupGetById(InterestGroupGetByIdParams params) async{
    try {
      final dio = Dio();
      final res = await dio.get<InterestGroup>('jujuju/jajajja/Notifications');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<InterestGroup> interestGroupUpdate(InterestGroupUpdateParams params) async {
    try {
      final dio = Dio();
      final res = await dio.patch<InterestGroup>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> interestGroupDelete(InterestGroupDeleteParams params) async {
    try {
      final dio = Dio();
      final res = await dio.delete<bool>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}
