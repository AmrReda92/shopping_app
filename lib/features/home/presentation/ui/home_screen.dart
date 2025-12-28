import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/widgets/custom_grid_view_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Expanded(child: CustomGridViewCategory())

            ],
          ),
        ),
      ),
    );
  }
}
