import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:kolony_keeper/core/utils/failures.dart';
import 'package:kolony_keeper/core/utils/response.dart';
import 'package:kolony_keeper/global/entities/incidents.dart';
import 'package:kolony_keeper/global/models/models.dart';

abstract class IIncidentsRepository { 
  AsyncResponse<Incidents> incidentCreate(IncidentCreateParams params);
  AsyncResponse<Incidents> incidentGetById(IncidentGetByIdParams params); 
  AsyncResponse<Incidents> incidentUpdate(IncidentUpdateParams params); 
  AsyncResponse<bool> incidentDelete(IncidentDeleteParams params); 
}

class IncidentsRepository implements IIncidentsRepository{
  @override
  AsyncResponse<Incidents> incidentCreate(IncidentCreateParams params) async{
    try {
      final dio = Dio();
      final res = await dio.post<Incidents>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<Incidents> incidentGetById(IncidentGetByIdParams params) async{
    try {
      final dio = Dio();
      final res = await dio.get<Incidents>('jujuju/jajajja/Notifications');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Incidents> incidentUpdate(IncidentUpdateParams params) async {
    try {
      final dio = Dio();
      final res = await dio.patch<Incidents>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> incidentDelete(IncidentDeleteParams params) async {
    try {
      final dio = Dio();
      final res = await dio.delete<bool>('jujuju/jajajja/Notifications', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}