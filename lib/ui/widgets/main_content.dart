import 'package:flutter/material.dart';
import 'package:furniture_app/model/product.dart';

import 'add_to_cart_button.dart';
import 'list_of_colors.dart';
import 'product_poster.dart';

class MainContent extends StatelessWidget {
  final Product product;
  const MainContent({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              decoration: const BoxDecoration(
                color: Color(0xFFF1EFF1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: product.id,
                      child: ProductPoster(
                        size: size,
                        imageUrl: product.imageUrl,
                      ),
                    ),
                  ),
                  const ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFA41B),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 9.0),
                    child: Text(
                      product.description,
                      style: const TextStyle(
                        color: Color(0xFF747474),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18.0),
                ],
              ),
            ),
            const AddToCartButton(),
          ],
        ),
      ),
    );
  }
}
