import 'package:store/features/home/data/data_sources/home_remore_dataSources.dart';
import 'package:store/features/home/domain/entites/card_entites.dart';
import 'package:store/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
      final HomeRemoreDatasources  homeRemoteDatasources;

  HomeRepoImpl({required this.homeRemoteDatasources});

  @override
  Future<List<CardEntites>> fetchProducts() async{



       var products= await homeRemoteDatasources.fetchProducts();

       return products;
  }




  
}