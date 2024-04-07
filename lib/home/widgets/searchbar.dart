import 'package:flutter/material.dart';

class CustomSearchbar extends StatefulWidget {
  const CustomSearchbar({super.key});

  @override
  State<CustomSearchbar> createState() => _CustomSearchbarState();
}

class _CustomSearchbarState extends State<CustomSearchbar> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 370,
        decoration: BoxDecoration(
          color: Color.fromARGB(149, 255, 255, 255),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Search in your storages',
              hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              border: InputBorder.none,
              icon: Icon(
                Icons.search,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
