import 'package:store_task_route/core/use_cases/no_param_usecse.dart';
import 'package:store_task_route/features/home/domain/entites/card_entites.dart';
import 'package:store_task_route/features/home/domain/repos/home_repo.dart';

class FetchProductsUsecase extends UseCase<List<CardEntites>> {

final HomeRepo homeRepo;
FetchProductsUsecase(this.homeRepo);

  @override
  Future<List<CardEntites>> call()
  async{
 return await homeRepo.fetchProducts();

  }


}
