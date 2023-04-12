import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kolony_keeper/core/utils/failures.dart';
import 'package:kolony_keeper/core/utils/response.dart';
import 'package:kolony_keeper/global/entities/business_group.dart';
import 'package:kolony_keeper/global/models/models.dart';
abstract class IBusinessGroupsRepository {
  AsyncResponse<BusinessGroup> businessGroupCreate(BusinessGroupCreateParams params);
  AsyncResponse<bool> businessGroupDelete(BusinessGroupDeleteParams params); 
  AsyncResponse<BusinessGroup> businessGroupGetById(BusinessGroupGetByIdParams params); 
  AsyncResponse<BusinessGroup> businessGroupUpdate(BusinessGroupUpdateParams params);
}

class BusinessGroupsRepository implements IBusinessGroupsRepository{
  
  @override
  AsyncResponse<BusinessGroup> businessGroupCreate(BusinessGroupCreateParams params) async{
    try {
      final dio = Dio();
      final res = await dio.post<BusinessGroup>('jujuju/jajajja/InterestGroup', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<BusinessGroup> businessGroupGetById(BusinessGroupGetByIdParams params) async{
    try {
      final dio = Dio();
      final res = await dio.get<BusinessGroup>('jujuju/jajajja/Notifications');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessGroup> businessGroupUpdate(BusinessGroupUpdateParams params) async {
    try {
      final dio = Dio();
      final res = await dio.patch<BusinessGroup>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> businessGroupDelete(BusinessGroupDeleteParams params) async {
    try {
      final dio = Dio();
      final res = await dio.delete<bool>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}