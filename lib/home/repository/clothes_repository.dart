import 'package:me_storage/home/models/clothes.dart';

class ClothesRepository {
  Future<List<Clothes>> getClothes() async {
    return await Future.value(clothesMock);
  }

  void addClothes(Clothes clothes) {
    clothesMock.add(clothes);
  }

  void removeClothes(Clothes clothes) {
    clothesMock.remove(clothes);
  }
}

List<Clothes> clothesMock = [];
