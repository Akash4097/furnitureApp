import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
      child: TextFormField(
        style: const TextStyle(
          color: Color(0xFFF1EFF1),
        ),
        decoration: InputDecoration(
          hintText: "Search",
          fillColor: const Color(0xFFF1EFF1).withOpacity(0.4),
          prefixIcon: const Icon(
            Icons.search_rounded,
            size: 32.0,
            color: Colors.white,
          ),
          contentPadding: const EdgeInsets.all(18.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Color(0xFFF1EFF1),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Color(0xFFEFEFEF),
            ),
          ),
          filled: true,
          hintStyle: const TextStyle(
            color: Color(0xFFF1EFF1),
          ),
        ),
      ),
    );
  }
}
