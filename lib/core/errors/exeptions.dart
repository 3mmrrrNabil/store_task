import 'package:dio/dio.dart';
import 'error_model.dart';

class ServerExeption implements Exception{


  final ErrorModel errorModel;

  ServerExeption({required this.errorModel});



}






  void handleDioExeption(DioException e) {
     switch(e.type)
    {
    
      case DioExceptionType.connectionTimeout:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.sendTimeout:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.receiveTimeout:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badCertificate:
         throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.cancel:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionError:
       throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
         case DioExceptionType.badResponse:
         switch(e.response?.statusCode)
         {
            case 400:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
    
            case 401:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
    
            case 403:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
    
    
            case 404:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
    
            case 409:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
    
            case 422:
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
    
            case 504:
                  
        throw ServerExeption(errorModel: ErrorModel.fromJson(e.response!.data));
    
    
         }
    }
  }