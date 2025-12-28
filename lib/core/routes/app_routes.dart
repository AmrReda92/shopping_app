import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/routes/routes.dart';
import 'package:shopping_app/core/utils/api_service.dart';
import 'package:shopping_app/features/home/presentation/ui/home_screen.dart';
import 'package:shopping_app/features/product/data/manager/product_cubit/product_cubit.dart';
import 'package:shopping_app/features/product/presentation/ui/product_screen.dart';
import 'package:shopping_app/features/product/data/repos/product_repo_impl.dart';

class AppRoutes {
  static Route<dynamic>? function(RouteSettings setting) {
    switch (setting.name) {
      case Routes.homeScreen :
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) =>
                  ProductCubit(ProductModelImpl(ApiService(Dio()))),
              child: HomeScreen(),
            ));

      case Routes.productScreen :
        final category = setting.arguments as String;
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => ProductCubit(ProductModelImpl(ApiService(Dio())))..getAProductsByCategory(category: category),
              child: ProductScreen(),
            ));
    }
    return null;
  }
}