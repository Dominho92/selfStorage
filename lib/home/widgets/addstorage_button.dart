import 'package:flutter/material.dart';
import 'package:me_storage/home/models/clothes.dart';
import 'package:me_storage/home/repository/clothes_repository.dart';

class AddstorageButton extends StatefulWidget {
  const AddstorageButton({super.key});

  @override
  State<AddstorageButton> createState() => _AddstorageButtonState();
}

class _AddstorageButtonState extends State<AddstorageButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          ClothesRepository().addClothes(Clothes(
              category: "Shirt", name: "T-Shirt", brand: "Nike", size: "M"));
          setState(() {});
        },
        child: Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.add, color: Colors.white),
        ));
  }
}
