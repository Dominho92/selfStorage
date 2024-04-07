import 'package:flutter/material.dart';
import 'package:me_storage/home/models/clothes.dart';
import 'package:me_storage/home/repository/clothes_repository.dart';

class ClothesCart extends StatefulWidget {
  const ClothesCart({super.key, required this.clothes});

  final Clothes clothes;

  @override
  State<ClothesCart> createState() => _ClothesCartState();
}

class _ClothesCartState extends State<ClothesCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(184, 248, 252, 20),
          borderRadius: BorderRadius.circular(25),
        ),
        height: 136,
        width: 160,
        child: Column(
          children: [
            Text(widget.clothes.category),
            Text(widget.clothes.name),
            Text(widget.clothes.brand),
            Text(widget.clothes.size),
            IconButton(
                onPressed: () {
                  setState(() {
                    ClothesRepository().removeClothes(widget.clothes);
                  });
                },
                icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
