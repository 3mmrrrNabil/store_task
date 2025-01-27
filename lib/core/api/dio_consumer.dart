import 'package:dio/dio.dart';

import '../errors/exeptions.dart';
import 'api_consumer.dart';

class DioConsumer extends ApiConsumer {


  final Dio dio=Dio();


  @override
  Future delete (String path, {dynamic data, Map<String, dynamic>? queryParamaters,bool isFormData =false}) async{
   try {
  final  response= await dio.delete(path,
   data: isFormData?FormData.fromMap(data):  data,
   queryParameters: queryParamaters);

  return response.data;
} on DioException catch (e) {
  handleDioExeption(e);
  }
  }


  @override
  Future get(String path, {Object? data, Map<String, dynamic>? queryParamaters}) async{
   

  try {
  final  response= await dio.get(path,
   data: data,
   queryParameters: queryParamaters);
  
  return response.data;
} on DioException catch (e) {
  handleDioExeption(e);
  }

   
  }

  @override
  Future patch(String path, {dynamic data, Map<String, dynamic>? queryParamaters,bool isFormData =false}) async{



  try {
  final  response= await dio.patch(path,
   data: isFormData?FormData.fromMap(data):  data,
   queryParameters: queryParamaters

   );

  return response.data;
} on DioException catch (e) {
  handleDioExeption(e);
  }



  }

  @override
  Future post(String path, {dynamic data, Map<String, dynamic>? queryParamaters,bool isFormData =false}) async{


  try {
  final  response= await dio.post(path,
 data: isFormData?FormData.fromMap(data):  data,   queryParameters: queryParamaters);


  return response.data;
} on DioException catch (e) {
  handleDioExeption(e);
  }

  }



 @override
  Future put(String path, {dynamic data, Map<String, dynamic>? queryParamaters,bool isFormData =false}) async{



  try {
  final  response= await dio.patch(path,
   data: isFormData?FormData.fromMap(data):  data,
   queryParameters: queryParamaters

   );

  return response.data;
} on DioException catch (e) {
  handleDioExeption(e);
  }



  }
}
