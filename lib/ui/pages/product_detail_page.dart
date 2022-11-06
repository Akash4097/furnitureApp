import 'package:flutter/material.dart';
import 'package:furniture_app/model/product.dart';

import '../widgets/main_content.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF035AA6),
      appBar: _buildAppBar(context),
      body: MainContent(
        product: product,
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFF1EFF1),
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: 18.0),
        icon: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
