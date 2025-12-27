import 'package:flutter/material.dart';
import 'package:shopping_app/core/routes/routes.dart';
import 'package:shopping_app/features/home/presentation/ui/home_screen.dart';
import 'package:shopping_app/features/product/presentation/ui/product_screen.dart';

class AppRoutes {
  static Route<dynamic>? function(RouteSettings setting) {

    switch (setting.name){
      case Routes.homeScreen :
        return MaterialPageRoute(builder: (_)=>HomeScreen());

      case Routes.productScreen :
        return MaterialPageRoute(builder: (_)=>ProductScreen());
    }
    return null;

  }
}