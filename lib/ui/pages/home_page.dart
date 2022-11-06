import 'package:flutter/material.dart';
import '../widgets/category_list.dart';
import '../../repository/repository_impl.dart';
import '../widgets/product_list.dart';
import '../widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final repository = FurnitureRepositoryImpl();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF035AA6),
        appBar: _buildAppBar(),
        body: Column(
          children: const [
            SearchBar(),
            CategoryList(),
            ProductList(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Dashboard"),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        )
      ],
    );
  }
}
