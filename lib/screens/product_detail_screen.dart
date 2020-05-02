import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-datail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String; //id
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false, //dont want to listen
    ).findById(productId); //findById method in products.dart

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Container(
        height: 300, 
        child: Image.network(loadedProduct.imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
