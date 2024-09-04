import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBar(
            hintText: "Search your favourite",
            elevation: WidgetStatePropertyAll(0.5),
            backgroundColor: WidgetStatePropertyAll(Colors.
                white54.withOpacity(0.8)),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded),
            ),
          ),
        ),
      ),
    );
  }
}
