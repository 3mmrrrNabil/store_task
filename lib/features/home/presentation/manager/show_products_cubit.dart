
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/home/domain/use_cases/fetch_products_usecase.dart';
import 'package:store/features/home/presentation/manager/show_product_state.dart';


class ProductsCubit extends Cubit<ProductsState> {
  final FetchProductsUsecase  fetchProductsUsecase; 
  ProductsCubit( this.fetchProductsUsecase) : super(ProductsInitial());

  Future<void> fetchProducts() async {
    emit(ProductsLoading());
    try {
      final products = await fetchProductsUsecase.call();
      emit(ProductsLoaded(products));
    } catch (e) {
      emit(ProductsError(e.toString()));
    }
  }
}