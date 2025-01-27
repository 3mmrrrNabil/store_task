import 'package:store/features/home/domain/entites/card_entites.dart';

abstract class HomeRepo {


  Future<List<CardEntites>> fetchProducts();
}