import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(18.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          const Icon(Icons.chat_outlined),
          const SizedBox(width: 9),
          const Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFCBF1E), elevation: 0.0),
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            label: const Text(
              "Add to Cart",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
