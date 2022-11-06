import 'package:flutter/material.dart';

class ProductPoster extends StatelessWidget {
  final Size size;
  final String imageUrl;
  const ProductPoster({
    super.key,
    required this.size,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 18.0),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.network(
            imageUrl,
            height: size.width * 0.75,
            width: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
