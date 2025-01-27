abstract class ApiConsumer {
 
Future<dynamic> get(
String path,{
Object? data,
Map<String,dynamic>? queryParamaters
}

);
Future<dynamic> post(
  String path,{
Object? data,
Map<String,dynamic>? queryParamaters,

bool isFormData =false,



}
);
Future<dynamic> patch(
  String path,{
Object? data,
Map<String,dynamic>? queryParamaters,
bool isFormData =false,
}
);
Future<dynamic> delete(
  String path,{
Object? data,
Map<String,dynamic>? queryParamaters,
bool isFormData =false,
}
);
Future<dynamic> put(
  String path,{
Object? data,
Map<String,dynamic>? queryParamaters,
bool isFormData =false,
}
);




}