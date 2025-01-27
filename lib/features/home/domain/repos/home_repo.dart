
import 'package:store_task_route/features/home/domain/entites/card_entites.dart';

abstract class HomeRepo {


  Future<List<CardEntites>> fetchProducts();
}