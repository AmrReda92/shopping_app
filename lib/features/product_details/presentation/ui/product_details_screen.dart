import 'package:flutter/material.dart';
import 'package:shopping_app/core/routes/app_styles.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      title: Text("Item",style: AppStyles.font24.copyWith(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
                height: MediaQuery.of(context).size.height*.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset("assets/images/woman.png",fit: BoxFit.cover,)),
            SizedBox(height: 20,),
            Text("Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",style: AppStyles.font24,),
            SizedBox(height: 8,),
            Text("Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",style: AppStyles.font20,),
            SizedBox(height: 14,),
            Text("12\$",style: AppStyles.font24,)
          ],
        ),
      ),
    );
  }
}
