import 'package:flutter/material.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/product_overView_screen.dart';
 import 'package:provider/provider.dart';
//
//
// import './screens/product_detail_screen.dart';
 import 'providers/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
      create: (ctx) => Products(),
      child:
      MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),

          })
      );
  }

}
