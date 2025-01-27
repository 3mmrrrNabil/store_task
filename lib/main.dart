import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:store_task_route/features/home/data/data_sources/home_remore_dataSources.dart';
import 'package:store_task_route/features/home/data/repos/home_repo_impl.dart';
import 'package:store_task_route/features/home/domain/use_cases/fetch_products_usecase.dart';
import 'package:store_task_route/features/home/presentation/views/widgets/Home_View.dart';
import 'features/home/presentation/manager/show_products_cubit.dart';  

void main() {


  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(homeRemoteDatasources: HomeRemoreDatasourcesImpl()));
  runApp(const MyApp());
}

final getIt = GetIt.instance;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductsCubit(FetchProductsUsecase(getIt.get<HomeRepoImpl>()))..fetchProducts(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
