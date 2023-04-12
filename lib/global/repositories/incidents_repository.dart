import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../core/config/config.dart';
import '../../core/utils/utils.dart';
import '../entities/incidents.dart';
import '../models/models.dart';

abstract class IIncidentsRepository { 
  AsyncResponse<Incidents> incidentCreate(IncidentCreateParams params);
  AsyncResponse<Incidents> incidentGetAll(); 
  AsyncResponse<Incidents> incidentGetById(IncidentGetByIdParams params); 
  AsyncResponse<Incidents> incidentUpdate(IncidentUpdateParams params, String id); 
  AsyncResponse<bool> incidentDelete(IncidentDeleteParams params); 
}

class IncidentsRepository implements IIncidentsRepository{

  final _client = HttpClient('${Environment.kolonyKeeperApi}/incidents');

  @override
  AsyncResponse<Incidents> incidentCreate(IncidentCreateParams params) async{
    try {
      final res = await _client.post('', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  } 

  @override
  AsyncResponse<Incidents> incidentGetAll() async{
    try {
      final res = await _client.get('');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Incidents> incidentGetById(IncidentGetByIdParams params) async{
    try {
      final res = await _client.get('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<Incidents> incidentUpdate(IncidentUpdateParams params, String id) async {
    try {
      final res = await _client.patch('/$id', data: params.toJson());
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }

  @override
  AsyncResponse<bool> incidentDelete(IncidentDeleteParams params) async {
    try {
      final res = await _client.delete('/${params.id}');
      return Right(res.data!);
    } catch (e) {
      return Left(Failure.error(e.toString()));
    }
  }
}