import 'package:flutter/material.dart';
import 'package:shopping_app/shopping_app.dart';

void main() {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    print('❌ FlutterError: ${details.exception}');
    print(details.stack);
  };
  runApp(const ShoppingApp());
}

