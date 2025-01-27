import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_task_route/features/home/presentation/manager/show_product_state.dart';
import 'package:store_task_route/features/home/presentation/manager/show_products_cubit.dart';
import 'package:store_task_route/features/home/presentation/views/widgets/widgets/grid_view_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
     
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: SafeArea(
          child: BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              if (state is ProductsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is ProductsLoaded) {
                final products = state.products; 
                return grid_view_widget(products: products);
              } else if (state is ProductsError) {
                return Center(child: Text('Error: ${state.message}')); 
              }
        
              return const Center(child: Text('No products available.'));
            },
          ),
        ),
      ),
    );
  }
}

