import 'package:store_task_route/core/api/dio_consumer.dart';
import 'package:store_task_route/core/api/end_points.dart';
import 'package:store_task_route/features/home/data/models/card_model.dart';
import 'package:store_task_route/features/home/domain/entites/card_entites.dart';

abstract class HomeRemoreDatasources {


  Future<List<CardEntites>> fetchProducts();

  
}

class HomeRemoreDatasourcesImpl extends HomeRemoreDatasources
{
    final DioConsumer dioConsumer = DioConsumer();
    
  @override
  Future<List<CardEntites>> fetchProducts({Map<String, dynamic>? queryParameters}) async{
  final response = await dioConsumer.get(
        EndPoint.baseUrl,
        queryParamaters: queryParameters,
      );
      List<CardEntites> products = getBooksList(response);

      return products;
    }

  List<CardEntites> getBooksList(response) {
    List<CardEntites> products = [];
    for (var product in response) {
      products.add(CardModel.fromJson(product));
    }
    return products;
  }
  }


  
