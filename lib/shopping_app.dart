import 'package:flutter/material.dart';
import 'package:shopping_app/core/routes/app_routes.dart';
import 'package:shopping_app/core/routes/routes.dart';

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.function,
      initialRoute: Routes.homeScreen,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade200
        ),
        fontFamily: "Cairo",
        scaffoldBackgroundColor: Colors.blue.shade400

      ),
    );
  }
}

