import 'package:flutter/material.dart';
import 'package:furniture_app/model/product.dart';
import 'package:furniture_app/repository/repository_impl.dart';
import 'package:furniture_app/ui/pages/product_detail_page.dart';

import 'product_card.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final repository = FurnitureRepositoryImpl();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 70),
            decoration: const BoxDecoration(
              color: Color(0xFFF1EFF1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          FutureBuilder<List<Product>>(
            future: repository.getProducts(),
            builder: (context, snapshot) {
              final products = snapshot.data;
              if (products != null) {
                return ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    index: index,
                    product: products[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
