import 'package:flutter/material.dart';
import 'package:me_storage/home/models/clothes.dart';
import 'package:me_storage/home/repository/clothes_repository.dart';
import 'package:me_storage/home/styles/styles.dart';
import 'package:me_storage/home/widgets/addstorage_button.dart';
import 'package:me_storage/home/widgets/clothes_card.dart';
import 'package:me_storage/home/widgets/mainpage_head.dart';
import 'package:me_storage/home/widgets/searchbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Future<List<Clothes>> clothes;
  @override
  void initState() {
    clothes = ClothesRepository().getClothes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: customBackground(),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              MainHead(),
              SizedBox(height: 15),
              CustomSearchbar(),
              SizedBox(height: 15),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  FutureBuilder<List<Clothes>>(
                    future: clothes,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: snapshot.data!
                              .map((e) => ClothesCart(clothes: e))
                              .toList(),
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              ),
              AddstorageButton(),
              IconButton(
                  onPressed: () {
                    setState(() {
                      clothes = ClothesRepository().getClothes();
                    });
                  },
                  icon: Icon(Icons.refresh, color: Colors.white)),
              IconButton(
                  onPressed: () {
                    setState(() {
                      ClothesRepository().addClothes(Clothes(
                          category: "Shirt",
                          name: "T-Shirt",
                          brand: "Nike",
                          size: "M"));
                      clothes = ClothesRepository().getClothes();
                    });
                  },
                  icon: Icon(Icons.delete, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
