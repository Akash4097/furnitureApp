import 'package:flutter/material.dart';
import 'package:furniture_app/ui/widgets/category_list.dart';
import '../../repository/repository_impl.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xFF035AA6),
      appBar: _buildAppBar(),
      body: Column(
        children: const [SearchBar(), CategoryList()],
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
          icon: Icon(Icons.notifications),
        )
      ],
    );
  }
}
