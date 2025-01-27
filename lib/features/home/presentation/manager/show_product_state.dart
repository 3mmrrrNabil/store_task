import 'package:equatable/equatable.dart';
import 'package:store_task_route/features/home/domain/entites/card_entites.dart';
abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<CardEntites> products;

  const ProductsLoaded(this.products);

}

class ProductsError extends ProductsState {
  final String message;

  const ProductsError(this.message);
}

