import 'package:flutter/material.dart';
import 'package:furniture_app/model/product.dart';

class ProductCard extends StatelessWidget {
  final int index;
  final VoidCallback onTap;
  final Product product;
  const ProductCard({
    super.key,
    required this.index,
    required this.onTap,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 9,
      ),
      height: 160,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: index.isEven
                    ? const Color(0xFF40BAD5)
                    : const Color(0xFFFFA41B),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 27,
                    color: Colors.black12,
                  )
                ],
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: product.id,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  height: 160,
                  width: 200,
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 5,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFA41B),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "\$${product.price}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
