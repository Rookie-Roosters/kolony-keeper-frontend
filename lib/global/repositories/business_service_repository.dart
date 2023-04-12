import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kolony_keeper/core/utils/failures.dart';
import 'package:kolony_keeper/core/utils/response.dart';
import 'package:kolony_keeper/global/entities/entities.dart';
import 'package:kolony_keeper/global/models/models.dart';
abstract class IBusinessServicesRepository{
  AsyncResponse<BusinessService> businessServiceCreate(BusinessServiceCreateParams params);
  AsyncResponse<bool> businessServiceDelete(BusinessServiceDeleteParams params); 
  AsyncResponse<BusinessService> businessServiceGetById(BusinessServiceGetByIdParams params); 
  AsyncResponse<BusinessService> businessServiceUpdate(BusinessServiceUpdateParamas params);
}

class BusinessServicesRepository implements IBusinessServicesRepository{
  
  @override
  AsyncResponse<BusinessService> businessServiceCreate(BusinessServiceCreateParams params) async{
    try {
      final dio = Dio();
      final res = await dio.post<BusinessService>('jujuju/jajajja/InterestGroup', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<BusinessService> businessServiceGetById(BusinessServiceGetByIdParams params) async{
    try {
      final dio = Dio();
      final res = await dio.get<BusinessService>('jujuju/jajajja/Notifications');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<BusinessService> businessServiceUpdate(BusinessServiceUpdateParamas params) async {
    try {
      final dio = Dio();
      final res = await dio.patch<BusinessService>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> businessServiceDelete(BusinessServiceDeleteParams params) async {
    try {
      final dio = Dio();
      final res = await dio.delete<bool>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}